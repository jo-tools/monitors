#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				  macOSEntitlements={"App Sandbox":"False","Hardened Runtime":"False","Notarize":"False","UserEntitlements":""}
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin IDEScriptBuildStep CodeSign , AppliesTo = 2, Architecture = 0, Target = 0
					'*********************************************************************************************
					' CodeSign | Azure Trusted Signing | PFX | Docker
					'*********************************************************************************************
					' https://github.com/jo-tools/ats-codesign-innosetup
					'*********************************************************************************************
					' Requirements
					'*********************************************************************************************
					' 1.  Set up Codesigning with one of the following
					' 1.1 Azure Trusted Signing
					'     Requires acs.json and azure.json in ~/.ats-codesign
					'     Strongly recommends ats-codesign-credential.sh in ~/.ats-codesign
					' 1.2 CodeSign Certificate .pfx
					'     Requires pfx.json and certificate.pfx in ~/.pfx-codesign
					'     Strongly recommends pfx-codesign-credential.sh in ~/.pfx-codesign
					' 2.  Have Docker up and running
					' 3.  Read the comments in this Post Build Script
					' 4.  Modify it according to your needs
					'
					'     Especially look out for sDOCKER_EXE
					'     You might need to set the full path to the executable
					'*********************************************************************************************
					' 5.  If it's working for you:
					'     Do you like it? Does it help you? Has it saved you time and money?
					'     You're welcome - it's free...
					'     If you want to say thanks I appreciate a message or a small donation.
					'     Contact: xojo@jo-tools.ch
					'     PayPal:  https://paypal.me/jotools
					'*********************************************************************************************
					
					'*********************************************************************************************
					' Note: Xojo IDE running on Linux
					'*********************************************************************************************
					' Make sure that docker can be run without requiring 'sudo':
					' More information e.g. in this article:
					' https://medium.com/devops-technical-notes-and-manuals/how-to-run-docker-commands-without-sudo-28019814198f
					' 1. sudo groupadd docker
					' 2. sudo gpasswd -a $USER docker
					' 3. (reboot)
					'*********************************************************************************************
					
					'*********************************************************************************************
					' Security Warning
					'*********************************************************************************************
					' This Post Build Script is intended as an example to demonstrate the functionality.
					' It allows to retrieve sensitive information (such as a Client Secret or Certificate
					' Password) from a plaintext `.json` configuration file, which is not secure.
					' However, this Post Build Script also supports retrieving credentials from a
					' Secret Storage. It's highly recommended to use that approach.
					'*********************************************************************************************
					
					
					If DebugBuild Then Return 'don't CodeSign DebugRun's
					
					'bSILENT=True : don't show any messages until checking configuration
					'               once .json required files are found: expect Docker and codesign to work
					'               use this e.g. in Open Source projects so that your builds will be codesigned,
					'               but if others are building the project it won't show messages to them
					Var bSILENT As Boolean = True
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 3  'Windows (Intel, 32Bit)
					Case 19 'Windows (Intel, 64Bit)
					Case 25 'Windows(ARM, 64Bit)
					Else
					If (Not bSILENT) Then Print "Codesign: Unsupported Build Target"
					Return
					End Select
					
					'Don't CodeSign Development and Alpha Builds
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					If (Not bSILENT) Then Print "Codesign: Not enabled for Development Builds"
					Return
					Case "1" 'Alpha
					If (Not bSILENT) Then Print "Codesign: Not enabled for Alpha Builds"
					Return
					Case "2" 'Beta
					Case "3" 'Final
					End Select
					
					'Configure what to be CodeSigned
					Var sSIGN_FILES() As String
					
					Select Case PropertyValue("App.StageCode")
					Case "3" 'Final
					' sign all .exe's and all .dll's
					sSIGN_FILES.Add("""./**/*.exe""") 'recursively all .exe's
					sSIGN_FILES.Add("""./**/*.dll""") 'recursively all .dll's
					Else
					' only sign all .exe's for Beta/Alpha/Development builds
					sSIGN_FILES.Add("""./**/*.exe""") 'recursively all .exe's
					End Select
					
					'Note: In your project use jotools/codesign if you are not using the InnoSetup Build Step.
					'      It's a smaller Docker Image...
					'      Should your project use the Post Build Script 'InnoSetup' too, then change here to use jotools/innosetup.
					'      InnoSetup includes codesign, too. So you don't need having two different Docker Images taking up space on your machine.
					Var sDOCKER_IMAGE As String = "jotools/codesign" 'or: "jotools/innosetup"
					
					Var sFILE_ACS_JSON As String = "" 'will be searched in ~/.ats-codesign
					Var sFILE_AZURE_JSON As String = "" 'will be searched in ~/.ats-codesign
					Var sFILE_PFX_JSON As String = "" 'will be searched in ~/.pfx-codesign
					Var sFILE_PFX_CERTIFICATE As String = "" 'will be searched in ~/.pfx-codesign
					Var sBUILD_LOCATION As String = CurrentBuildLocation
					
					'Check Environment
					Var sDOCKER_EXE As String = "docker"
					If TargetWindows Then 'Xojo IDE is running on Windows
					sFILE_ACS_JSON = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\acs.json echo %USERPROFILE%\.ats-codesign\acs.json").Trim
					sFILE_AZURE_JSON = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\azure.json echo %USERPROFILE%\.ats-codesign\azure.json").Trim
					sFILE_PFX_JSON = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\pfx.json echo %USERPROFILE%\.pfx-codesign\pfx.json").Trim
					sFILE_PFX_CERTIFICATE = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\certificate.pfx echo %USERPROFILE%\.pfx-codesign\certificate.pfx").Trim
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					sDOCKER_EXE = DoShellCommand("[ -f /usr/local/bin/docker ] && echo /usr/local/bin/docker").Trim
					If (sDOCKER_EXE = "") Then sDOCKER_EXE = DoShellCommand("[ -f /snap/bin/docker ] && echo /snap/bin/docker").Trim
					sFILE_ACS_JSON = DoShellCommand("[ -f ~/.ats-codesign/acs.json ] && echo ~/.ats-codesign/acs.json").Trim
					sFILE_AZURE_JSON = DoShellCommand("[ -f ~/.ats-codesign/azure.json ] && echo ~/.ats-codesign/azure.json").Trim
					sBUILD_LOCATION = sBUILD_LOCATION.ReplaceAll("\", "") 'don't escape Path
					sFILE_PFX_JSON = DoShellCommand("[ -f ~/.pfx-codesign/pfx.json ] && echo ~/.pfx-codesign/pfx.json").Trim
					sFILE_PFX_CERTIFICATE = DoShellCommand("[ -f ~/.pfx-codesign/certificate.pfx ] && echo ~/.pfx-codesign/certificate.pfx").Trim
					Else
					If (Not bSILENT) Then Print "Codesign: Xojo IDE running on unknown Target"
					Return
					End If
					
					Var bCODESIGN_ATS As Boolean = (sFILE_ACS_JSON <> "") And (sFILE_AZURE_JSON <> "")
					Var bCODESIGN_PFX As Boolean = (sFILE_PFX_JSON <> "") And (sFILE_PFX_CERTIFICATE <> "")
					
					If (Not bCODESIGN_ATS) And (Not bCODESIGN_PFX) Then
					If (Not bSILENT) Then
					Print "Codesign:" + EndOfLine + _
					"acs.json and azure.json not found in [UserHome]-[.ats-codesign]-[acs|azure.json]" + EndOfLine + _
					"pfx.json and certificate.pfx not found in [UserHome]-[.pfx-codesign]-[pfx.json|certificate.pfx]"
					End If
					Return
					End If
					
					'Check Docker
					Var iCHECK_DOCKER_RESULT As Integer
					Var sCHECK_DOCKER_EXE As String = DoShellCommand(sDOCKER_EXE + " --version", 0, iCHECK_DOCKER_RESULT).Trim
					If (iCHECK_DOCKER_RESULT <> 0) Or (Not sCHECK_DOCKER_EXE.Contains("Docker")) Or (Not sCHECK_DOCKER_EXE.Contains("version")) Or (Not sCHECK_DOCKER_EXE.Contains("build "))Then
					Print "Codesign: Docker not available"
					Return
					End If
					
					Var sCHECK_DOCKER_PROCESS As String = DoShellCommand(sDOCKER_EXE + " ps", 0, iCHECK_DOCKER_RESULT).Trim
					If (iCHECK_DOCKER_RESULT <> 0) Then
					Print "Codesign: Docker not running"
					Return
					End If
					
					'Get Credential from Secure Storage
					Var bENV_ATS_CREDENTIAL As Boolean
					Var bENV_PFX_CREDENTIAL As Boolean
					
					If bCODESIGN_ATS Or bCODESIGN_PFX Then
					Var SFILE_CREDENTIAL As String
					Var sCREDENTIAL_COMMAND As String
					
					If TargetWindows Then 'Xojo IDE is running on Windows
					If bCODESIGN_ATS Then
					SFILE_CREDENTIAL = DoShellCommand("if exist %USERPROFILE%\.ats-codesign\ats-codesign-credential.ps1 echo %USERPROFILE%\.ats-codesign\ats-codesign-credential.ps1").Trim
					ElseIf bCODESIGN_PFX Then
					SFILE_CREDENTIAL = DoShellCommand("if exist %USERPROFILE%\.pfx-codesign\pfx-codesign-credential.ps1 echo %USERPROFILE%\.pfx-codesign\pfx-codesign-credential.ps1").Trim
					End If
					If (SFILE_CREDENTIAL <> "") Then
					sCREDENTIAL_COMMAND = "powershell """ + SFILE_CREDENTIAL + """"
					End If
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					If bCODESIGN_ATS Then
					SFILE_CREDENTIAL = DoShellCommand("[ -f ~/.ats-codesign/ats-codesign-credential.sh ] && echo ~/.ats-codesign/ats-codesign-credential.sh").Trim
					ElseIf bCODESIGN_PFX Then
					SFILE_CREDENTIAL = DoShellCommand("[ -f ~/.pfx-codesign/pfx-codesign-credential.sh ] && echo ~/.pfx-codesign/pfx-codesign-credential.sh").Trim
					End If
					If (SFILE_CREDENTIAL <> "") Then
					Call DoShellCommand("chmod 755 """ + SFILE_CREDENTIAL + """") 'just to make sure it's executable
					sCREDENTIAL_COMMAND = SFILE_CREDENTIAL
					End If
					End If
					
					If (sCREDENTIAL_COMMAND <> "") Then
					'Once the Credential Helper Script is in place, we expect to get a value from it
					Var iCREDENTIAL_RESULT As Integer
					Var sCREDENTIAL As String = DoShellCommand(sCREDENTIAL_COMMAND, 0, iCREDENTIAL_RESULT).Trim
					If (iCREDENTIAL_RESULT <> 0) Or (sCREDENTIAL = "") Then
					Print  "Codesign: Could not retrieve " + If(bCODESIGN_ATS, "ATS", "PFX") + " Credential"
					Return
					End If
					
					'Use Environment Variable
					If bCODESIGN_ATS Then
					EnvironmentVariable("AZURE_CLIENT_SECRET") = sCREDENTIAL
					bENV_ATS_CREDENTIAL = True
					ElseIf bCODESIGN_PFX Then
					EnvironmentVariable("PFX_PASSWORD") = sCREDENTIAL
					bENV_PFX_CREDENTIAL = True
					End If
					End If
					End If
					
					'CodeSign in Docker Container
					Var sSIGN_COMMAND As String
					Var sSIGN_ENTRYPOINT As String
					If bCODESIGN_ATS Then
					'CodeSign using Azure Trusted Signing
					sSIGN_ENTRYPOINT = "ats-codesign.sh"
					sSIGN_COMMAND = _
					sDOCKER_EXE + " run " + _
					"--rm " + _
					"-v """ + sFILE_ACS_JSON + """:/etc/ats-codesign/acs.json " + _
					"-v """ + sFILE_AZURE_JSON + """:/etc/ats-codesign/azure.json " + _
					If(bENV_ATS_CREDENTIAL, "-e AZURE_CLIENT_SECRET ", "") + _
					"-v """ + sBUILD_LOCATION + """:/data " + _
					"-w /data " + _
					"--entrypoint " + sSIGN_ENTRYPOINT + " " + _
					sDOCKER_IMAGE + " " + _
					String.FromArray(sSIGN_FILES, " ")
					ElseIf bCODESIGN_PFX Then
					'CodeSign using .pfx
					sSIGN_ENTRYPOINT = "pfx-codesign.sh"
					sSIGN_COMMAND = _
					sDOCKER_EXE + " run " + _
					"--rm " + _
					"-v """ + sFILE_PFX_JSON + """:/etc/pfx-codesign/pfx.json " + _
					"-v """ + sFILE_PFX_CERTIFICATE + """:/etc/pfx-codesign/certificate.pfx " + _
					If(bENV_PFX_CREDENTIAL, "-e PFX_PASSWORD ", "") + _
					"-v """ + sBUILD_LOCATION + """:/data " + _
					"-w /data " + _
					"--entrypoint " + sSIGN_ENTRYPOINT + " " + _
					sDOCKER_IMAGE + " " + _
					String.FromArray(sSIGN_FILES, " ")
					End If
					
					Var iSIGN_RESULT As Integer
					Var sSIGN_OUTPUT As String = DoShellCommand(sSIGN_COMMAND, 0, iSIGN_RESULT)
					
					If (iSIGN_RESULT <> 0) Then
					Clipboard = sSIGN_OUTPUT
					Print "Codesign: " + sSIGN_ENTRYPOINT + " Error" + EndOfLine + _
					"[ExitCode: " + iSIGN_RESULT.ToString + "]" + EndOfLine + EndOfLine + _
					"Note: Shell Output is available in Clipboard."
					
					If (iSIGN_RESULT <> 125) Then
					Var iCHECK_DOCKERIMAGE_RESULT As Integer
					Var sCHECK_DOCKERIMAGE_OUTPUT As String = DoShellCommand(sDOCKER_EXE + " image inspect " + sDOCKER_IMAGE, 0, iCHECK_DOCKERIMAGE_RESULT)
					If (iCHECK_DOCKERIMAGE_RESULT <> 0) Then
					Print "Codesign: Docker Image '" + sDOCKER_IMAGE + "' not available"
					End If
					End If
					End If
					
				End
				Begin IDEScriptBuildStep CreateZIP , AppliesTo = 2, Architecture = 0, Target = 0
					'**************************************************
					' Create .zip for Windows Builds
					'**************************************************
					' https://github.com/jo-tools
					'**************************************************
					' 1. Read the comments in this PostBuild Script
					' 2. Edit the values according to your needs
					'**************************************************
					' 3. If it's working for you:
					'    Do you like it? Does it help you? Has it saved you time and money?
					'    You're welcome - it's free...
					'    If you want to say thanks I appreciate a message or a small donation.
					'    Contact: xojo@jo-tools.ch
					'    PayPal:  https://paypal.me/jotools
					'**************************************************
					
					If DebugBuild Then Return 'don't create .zip for DebugRuns
					
					'bSILENT=True : don't show any error messages
					Var bSILENT As Boolean = True
					
					'Check Build Target
					Select Case CurrentBuildTarget
					Case 3 'Windows (Intel, 32Bit)
					Case 19 'Windows (Intel, 64Bit)
					Case 25 'Windows(ARM, 64Bit)
					Else
					If (Not bSILENT) Then Print "CreateZIP: Unsupported Build Target"
					Return
					End Select
					
					'Xojo Project Settings
					Var sPROJECT_PATH As String
					Var sBUILD_LOCATION As String = CurrentBuildLocation
					Var sAPP_NAME As String = CurrentBuildAppName
					If (sAPP_NAME.Right(4) = ".exe") Then
					sAPP_NAME = sAPP_NAME.Left(sAPP_NAME.Length - 4)
					End If
					Var sCHAR_FOLDER_SEPARATOR As String
					If TargetWindows Then 'Xojo IDE is running on Windows
					sPROJECT_PATH = DoShellCommand("echo %PROJECT_PATH%", 0).Trim
					sCHAR_FOLDER_SEPARATOR = "\"
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					sPROJECT_PATH = DoShellCommand("echo $PROJECT_PATH", 0).Trim
					If sPROJECT_PATH.Right(1) = "/" Then
					'no trailing /
					sPROJECT_PATH = sPROJECT_PATH.Left(sPROJECT_PATH.Length - 1)
					End If
					If sBUILD_LOCATION.Right(1) = "/" Then
					'no trailing /
					sBUILD_LOCATION = sBUILD_LOCATION.Left(sBUILD_LOCATION.Length - 1)
					End If
					sBUILD_LOCATION = sBUILD_LOCATION.ReplaceAll("\", "") 'don't escape Path
					sCHAR_FOLDER_SEPARATOR = "/"
					End If
					
					If (sPROJECT_PATH = "") Then
					If (Not bSILENT) Then Print "CreateZIP: Could not get the Environment Variable PROJECT_PATH from the Xojo IDE." + EndOfLine + EndOfLine + "Unfortunately, it's empty.... try again after re-launching the Xojo IDE and/or rebooting your machine."
					Return
					End If
					
					'Check Stage Code for ZIP Filename
					Var sSTAGECODE_SUFFIX As String
					Select Case PropertyValue("App.StageCode")
					Case "0" 'Development
					sSTAGECODE_SUFFIX = "-dev"
					Case "1" 'Alpha
					sSTAGECODE_SUFFIX = "-alpha"
					Case "2" 'Beta
					sSTAGECODE_SUFFIX = "-beta"
					Case "3" 'Final
					'not used in filename
					End Select
					
					'Build ZIP Filename
					Var sZIP_FILENAME As String
					Select Case CurrentBuildTarget
					Case 3 'Windows (Intel, 32Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_Intel_32Bit.zip"
					Case 19 'Windows (Intel, 64Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_Intel_64Bit.zip"
					Case 25 'Windows(ARM, 64Bit)
					sZIP_FILENAME = sAPP_NAME.ReplaceAll(" ", "_") + sSTAGECODE_SUFFIX + "_Windows_ARM_64Bit.zip"
					Else
					Return
					End Select
					
					'Create .zip
					Var sPATH_PARTS() As String = sBUILD_LOCATION.Split(sCHAR_FOLDER_SEPARATOR)
					Var sAPP_FOLDERNAME As String = sPATH_PARTS(sPATH_PARTS.LastIndex)
					sPATH_PARTS.RemoveAt(sPATH_PARTS.LastIndex)
					Var sFOLDER_BASE As String = String.FromArray(sPATH_PARTS, sCHAR_FOLDER_SEPARATOR)
					
					If TargetWindows Then 'Xojo IDE is running on Windows
					Var sPOWERSHELL_COMMAND As String = "cd """ + sFOLDER_BASE + """; Compress-Archive -Path .\* -DestinationPath ""..\" + sZIP_FILENAME + """ -Force"
					Var iPOWERSHELL_RESULT As Integer
					Var sPOWERSHELL_OUTPUT As String = DoShellCommand("powershell -command """ + sPOWERSHELL_COMMAND.ReplaceAll("""", "'") + """", 0, iPOWERSHELL_RESULT)
					If (iPOWERSHELL_RESULT <> 0) Then
					If (Not bSILENT) Then Print "CreateZIP Error" + EndOfLine + EndOfLine + _
					sPOWERSHELL_OUTPUT.Trim + EndOfLine + _
					"[ExitCode: " + iPOWERSHELL_RESULT.ToString + "]"
					End If
					ElseIf TargetMacOS Or TargetLinux Then 'Xojo IDE running on macOS or Linux
					Var iZIP_RESULT As Integer
					Var sZIP_OUTPUT As String = DoShellCommand("cd """ + sFOLDER_BASE + """ && zip -r ""../" + sZIP_FILENAME + """ ""./" + sAPP_FOLDERNAME + """", 0, iZIP_RESULT)
					If (iZIP_RESULT <> 0) Then
					If (Not bSILENT) Then Print "CreateZIP Error" + EndOfLine + EndOfLine + _
					sZIP_OUTPUT.Trim + EndOfLine + _
					"[ExitCode: " + iZIP_RESULT.ToString + "]"
					End If
					End If
					
				End
			End
#tag EndBuildAutomation
