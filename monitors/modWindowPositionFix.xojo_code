#tag Module
Protected Module modWindowPositionFix
	#tag CompatibilityFlags = ( TargetDesktop and ( Target32Bit or Target64Bit ) )
	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub FitOnMonitor(Extends poWindow As Window, hMon As Integer = 0)
		  #If TargetWindows Then
		    Try
		      
		      Declare Function MoveWindow Lib "User32" (hWnd As Integer, x As Int32, y As Int32, nWidth As Int32, nHeight As Int32, bRepaint As Boolean) As Boolean
		      
		      Dim hMonOrig As Integer = poWindow.IsOnMonitorHandle
		      If (hMon = 0) Then hMon = hMonOrig
		      
		      Dim bMonitorWorkArea As Boolean = (Not poWindow.FullScreen)
		      Dim rectMonitor As REALbasic.Rect = GetMonitorRect(hmon, bMonitorWorkArea)
		      Dim rectWindowOrig As REALbasic.Rect = poWindow.GetWindowRect
		      Dim rectWindow As REALbasic.Rect = poWindow.GetWindowRect
		      
		      Dim iWidth As Integer = poWindow.Width
		      Dim iHeight As Integer = poWindow.Height
		      
		      'put on Monitor
		      If (hMon <> hMonOrig) Then
		        Call MoveWindow(poWindow.Handle, rectMonitor.Left, rectMonitor.Top, rectWindow.Width, rectWindow.Height, True)
		        'in case the ScaleFactor has changed... re-assign the original Width/Height (let Xojo Framework do that calculation)
		        If (poWindow.Width <> iWidth) Or (poWindow.Height <> iHeight) Then
		          poWindow.Width = iWidth
		          poWindow.Height = iHeight
		        End If
		      End If
		      
		      'check min/max Width/Height
		      If (poWindow.MinWidth > 0) And (poWindow.Width < poWindow.MinWidth) Then poWindow.Width = poWindow.MinWidth
		      If (poWindow.MinHeight > 0) And (poWindow.Height < poWindow.MinHeight) Then poWindow.Height = poWindow.MinHeight
		      If (poWindow.MaxWidth > 0) And (poWindow.Width > poWindow.MaxWidth) Then poWindow.Width = poWindow.MaxWidth
		      If (poWindow.MaxHeight > 0) And (poWindow.Height > poWindow.MaxHeight) Then poWindow.Height = poWindow.MaxHeight
		      
		      'Width/Height must have some reasonable value and can't be 0
		      If (poWindow.Width <= 0) Then poWindow.Width = 640
		      If (poWindow.Height <= 0) Then poWindow.Height = 480
		      
		      'get Window rect
		      rectWindowOrig = poWindow.GetWindowRect
		      rectWindow = poWindow.GetWindowRect
		      
		      'fullscreen?
		      If poWindow.FullScreen Then
		        rectWindow = rectMonitor
		        'set Width/Height so that Xojo Framework can do it's internals
		        Dim dScale As Double = Round((poWindow.GetWindowRect.Height / poWindow.Bounds.Height)*100)/100
		        poWindow.Width = rectMonitor.Width / dScale
		        poWindow.Height = rectMonitor.Height / dScale
		        iWidth = poWindow.Width
		        iHeight = poWindow.Height
		      End If
		      
		      'Window size needs to fit on Monitor
		      If (rectWindow.Width > rectMonitor.Width) Then rectWindow.Width = rectMonitor.Width
		      If (rectWindow.Height > rectMonitor.Height) Then rectWindow.Height = rectMonitor.Height
		      
		      'The Window now has a Width/Height that fits on the Monitor
		      'so let's check the Position
		      
		      If (rectWindow.Left < rectMonitor.Left) Then rectWindow.Left = rectMonitor.Left
		      If ((rectWindow.Left+rectWindow.Width) > rectMonitor.Right) Then rectWindow.Left = rectMonitor.Left + rectMonitor.Width - rectWindow.Width
		      
		      If (rectWindow.Top < rectMonitor.Top) Then rectWindow.Top = rectMonitor.Top
		      If ((rectWindow.Top+rectWindow.Height) > rectMonitor.Bottom) Then rectWindow.Top = rectMonitor.Top + rectMonitor.Height - rectWindow.Height
		      
		      'finally: assign the position
		      If (rectWindowOrig.Left <> rectWindow.Left) Or (rectWindowOrig.Top <> rectWindow.Top) Or (rectWindowOrig.Width <> rectWindow.Width) Or (rectWindowOrig.Height <> rectWindow.Height) Then
		        Call MoveWindow(poWindow.Handle, rectWindow.Left, rectWindow.Top, rectWindow.Width, rectWindow.Height, True)
		        If (Not poWindow.FullScreen) Then
		          'in case the ScaleFactor has changed... re-assign the original Width/Height (let Xojo Framework do that calculation)
		          If (poWindow.Width <> iWidth) Or (poWindow.Height <> iHeight) Then
		            poWindow.Width = iWidth
		            poWindow.Height = iHeight
		          End If
		        End If
		      End If
		      
		    Catch err As RuntimeException
		      'ignore
		    End Try
		    
		  #Else
		    If (hMon = 0) Then poWindow.FitOnScreen
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub FitOnMonitorIndex(Extends poWindow As Window, piMonitorIndex As Integer = -1)
		  #If TargetWindows Then
		    Dim hMon As Integer = 0
		    If (piMonitorIndex >= 0) Then
		      MonitorsGet
		      If (eiMonitorHandles.Ubound >= piMonitorIndex) Then hMon = eiMonitorHandles(piMonitorIndex)
		    End If
		    poWindow.FitOnMonitor(hMon)
		  #Else
		    poWindow.FitOnScreen(piMonitorIndex)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub FitOnScreen(Extends poWindow As Window, piScreen As Integer = -1)
		  'Adjust Position of Window so that it fits entirely on Screen
		  
		  Try
		    
		    If (piScreen = -1) Then piScreen = poWindow.IsOnScreen
		    If (piScreen >= ScreenCount) Then piScreen = 0
		    
		    Dim oScreen As Screen = Screen(piScreen)
		    Dim iScreenAvailableLeft As Integer = oScreen.AvailableLeft
		    
		    'check min/max Width/Height
		    If (poWindow.MinWidth > 0) And (poWindow.Width < poWindow.MinWidth) Then poWindow.Width = poWindow.MinWidth
		    If (poWindow.MinHeight > 0) And (poWindow.Height < poWindow.MinHeight) Then poWindow.Height = poWindow.MinHeight
		    If (poWindow.MaxWidth > 0) And (poWindow.Width > poWindow.MaxWidth) Then poWindow.Width = poWindow.MaxWidth
		    If (poWindow.MaxHeight > 0) And (poWindow.Height > poWindow.MaxHeight) Then poWindow.Height = poWindow.MaxHeight
		    
		    'Width/Height must have some reasonable value and can't be 0
		    If (poWindow.Width <= 0) Then poWindow.Width = 640
		    If (poWindow.Height <= 0) Then poWindow.Height = 480
		    
		    'use Bounds (respects window decoration, toolbar)
		    Dim currentWindowBounds As REALbasic.Rect = poWindow.Bounds
		    Dim setWindowBounds As New REALbasic.Rect(currentWindowBounds.Left, currentWindowBounds.Top, currentWindowBounds.Width, currentWindowBounds.Height)
		    
		    'Window size needs to fit on Screen
		    If (setWindowBounds.Height > oScreen.AvailableHeight) Then setWindowBounds.Height = oScreen.AvailableHeight
		    If (setWindowBounds.Width > oScreen.AvailableWidth) Then poWindow.Width = oScreen.AvailableWidth
		    
		    'The Window now has a Width/Height that fits on the Screen
		    'so let's check the Position
		    
		    If (setWindowBounds.Left < iScreenAvailableLeft) Then setWindowBounds.Left = iScreenAvailableLeft
		    If (setWindowBounds.Left > (iScreenAvailableLeft + oScreen.AvailableWidth - setWindowBounds.Width)) Then setWindowBounds.Left = (iScreenAvailableLeft + oScreen.AvailableWidth - setWindowBounds.Width)
		    
		    If (setWindowBounds.Top < oScreen.AvailableTop) Then setWindowBounds.Top = oScreen.AvailableTop
		    If (setWindowBounds.Top > (oScreen.AvailableTop + oScreen.AvailableHeight - setWindowBounds.Height)) Then setWindowBounds.Top = (oScreen.AvailableTop + oScreen.AvailableHeight - setWindowBounds.Height)
		    
		    'finally: assign the position
		    poWindow.Bounds = setWindowBounds
		    
		  Catch err As RuntimeException
		    'ignore
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function GetMonitorRect(hMon As Integer, pbWork As Boolean) As REALbasic.Rect
		  #If TargetWindows Then
		    Declare Function GetMonitorInfoW Lib "User32" (hMonitor As Integer, ByRef lpMInfo As LPMONITORINFO) As Boolean
		    Dim MyMonInfo As LPMONITORINFO
		    MyMonInfo.cbSize = MyMonInfo.Size
		    Call GetMonitorInfoW(hMon, MyMonInfo)
		    
		    Dim sRect As LPRECT
		    If pbWork Then
		      sRect = MyMonInfo.rcWork
		    Else
		      sRect = MyMonInfo.rcMonitor
		    End If
		    
		    Dim oRect As New REALbasic.Rect
		    oRect.Left = sRect.Left
		    oRect.Top = sRect.Top
		    oRect.Width = sRect.Right - sRect.Left
		    oRect.Height = sRect.Bottom - sRect.Top
		    Return oRect
		    
		  #Else
		    #Pragma unused hMon
		    #Pragma unused pbWork
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function GetWindowRect(Extends poWindow As Window) As REALbasic.Rect
		  #If TargetWindows Then
		    Declare Function GetWindowRect Lib "User32" (hWnd As Integer, ByRef lpRect As LPRECT) As Boolean
		    
		    Dim wndlpRect As LPRECT
		    Call GetWindowRect(poWindow.Handle, wndlpRect)
		    
		    Dim oRect As New REALbasic.Rect
		    oRect.Left = wndlpRect.Left
		    oRect.Top = wndlpRect.Top
		    oRect.Width = wndlpRect.Right - oRect.Left
		    oRect.Height = wndlpRect.Bottom - oRect.Top
		    Return oRect
		    
		  #Else
		    Return poWindow.Bounds
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub IsAtRelativeMonitorPosition(Extends poWindow As Window, ByRef piPosX As Integer, ByRef piPosY As Integer)
		  #If TargetWindows Then
		    If (ScreenCount = 1) Then
		      '1 Screen is never an issue
		      piPosX = poWindow.Left - Screen(0).Left
		      piPosY = poWindow.Top - Screen(0).Top
		      Return
		    End If
		    
		    'get position and scale
		    Dim hMon As Integer = poWindow.IsOnMonitorHandle
		    Dim rectMonitor As REALbasic.Rect = GetMonitorRect(hMon, False)
		    Dim rectWindow As REALbasic.Rect = poWindow.GetWindowRect
		    Dim boundsWindow As REALbasic.Rect = poWindow.Bounds
		    Dim dScale As Double = Round((rectWindow.Height / boundsWindow.Height)*100)/100
		    
		    'respect size of window decoration
		    Dim iWindowLeftDecoration As Integer = poWindow.Left - poWindow.Bounds.Left
		    Dim iWindowTopDecoration As Integer = poWindow.Top - poWindow.Bounds.Top
		    rectWindow.Left = rectWindow.Left + Ceil(iWindowLeftDecoration * dScale)
		    rectWindow.Top = rectWindow.Top + Ceil(iWindowTopDecoration * dScale)
		    
		    'Xojo Window will have the following relative .Left/Top values on this monitor
		    piPosX = (rectWindow.Left - rectMonitor.Left)/dScale
		    piPosY = (rectWindow.Top - rectMonitor.Top)/dScale
		    
		  #Else
		    Dim iScreen As Integer = poWindow.IsOnScreen
		    piPosX = poWindow.Left - Screen(iScreen).Left
		    piPosY = poWindow.Top - Screen(iScreen).Top
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function IsOnMonitorHandle(Extends poWindow As Window) As Integer
		  #If TargetWindows Then
		    Declare Function MonitorFromWindow Lib "User32" (hwnd As Integer, dwFlags As UInt32) As Integer
		    Const MONITOR_DEFAULTTONULL As UInt32 = &H0
		    Const MONITOR_DEFAULTTOPRIMARY As UInt32 = &H1
		    Const MONITOR_DEFAULTTONEAREST As UInt32 = &H2
		    
		    Dim hMon As Integer = MonitorFromWindow(poWindow.Handle, MONITOR_DEFAULTTONEAREST)
		    Return hMon
		  #Else
		    #Pragma unused poWindow
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function IsOnMonitorIndex(Extends poRect As REALbasic.Rect) As Integer
		  If (ScreenCount < 2) Then Return 0
		  
		  #If TargetWindows Then
		    Declare Function MonitorFromRect  Lib "User32" (ByRef lprc As LPRECT, dwFlags As UInt32) As Integer
		    Const MONITOR_DEFAULTTONULL As UInt32 = &H0
		    Const MONITOR_DEFAULTTOPRIMARY As UInt32 = &H1
		    Const MONITOR_DEFAULTTONEAREST As UInt32 = &H2
		    
		    Dim lprc As LPRECT
		    lprc.Top = poRect.Top
		    lprc.Left = poRect.Left
		    //NOTE: poRect has Xojo's virtual Width/Height
		    //      So this LPRECT won't be the correct size
		    //      otherwise we would need to get the ScaleFactor at Point Top/Left
		    //      and multiply with the Scale
		    //      However, it's good enough for now... it just doesn't account
		    //      for the situation where only the lower-right is visible on a Screen
		    lprc.Right = poRect.Left + poRect.Width
		    lprc.Bottom = poRect.Top + poRect.Height
		    
		    Dim hMon As Integer = MonitorFromRect(lprc, MONITOR_DEFAULTTONEAREST)
		    
		    MonitorsGet
		    If (eiMonitorHandles.IndexOf(hMon) >= 0) Then Return eiMonitorHandles.IndexOf(hMon)
		    Return 0
		    
		  #Else
		    Return poRect.IsOnScreen
		  #EndIf
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function IsOnMonitorIndex(Extends poWindow As Window) As Integer
		  If (ScreenCount < 2) Then Return 0
		  
		  #If TargetWindows Then
		    MonitorsGet
		    Dim hMon As Integer = poWindow.IsOnMonitorHandle
		    If (eiMonitorHandles.IndexOf(hMon) >= 0) Then Return eiMonitorHandles.IndexOf(hMon)
		    Return 0
		  #Else
		    Return poWindow.IsOnScreen
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function IsOnScreen(Extends poRect As REALbasic.Rect) As Integer
		  If (ScreenCount < 2) Then Return 0
		  
		  Try
		    Dim iMax As Integer = ScreenCount - 1
		    Dim oScreen As Screen
		    
		    'check if the horizontal Center is on a Screen
		    For i As Integer = 0 To iMax
		      oScreen = Screen(i)
		      If (poRect.HorizontalCenter >= oScreen.Left) And (poRect.HorizontalCenter < (oScreen.Left+oScreen.Width)) And (poRect.VerticalCenter >= oScreen.Top) And (poRect.VerticalCenter < (oScreen.Top+oScreen.Height)) Then
		        Return i
		      End If
		    Next
		    
		    'nope - check if top/left is on a Screen
		    For i As Integer = 0 To iMax
		      oScreen = Screen(i)
		      If (poRect.Left >= oScreen.Left) And (poRect.Left < (oScreen.Left+oScreen.Width)) And (poRect.Top >= oScreen.Top) And (poRect.Top < (oScreen.Top+oScreen.Height)) Then
		        Return i
		      End If
		    Next
		    
		    'nope - check if bottom/right is on a Screen
		    For i As Integer = 0 To iMax
		      oScreen = Screen(i)
		      If ((poRect.Left+poRect.Width) >= oScreen.Left) And ((poRect.Left+poRect.Width) < (oScreen.Left+oScreen.Width)) And ((poRect.Top+poRect.Height) >= oScreen.Top) And ((poRect.Top+poRect.Height) < (oScreen.Top+oScreen.Height)) Then
		        Return i
		      End If
		    Next
		    
		    'not found at all: return default/main screen
		    Return 0
		    
		  Catch err As RuntimeException
		    Return 0
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function IsOnScreen(Extends poWindow As Window) As Integer
		  If (ScreenCount < 2) Then Return 0
		  
		  Try
		    'Decorations might be outside of the Window (in FullScreen)
		    'Dim currentWindowBounds As REALbasic.Rect = poWindow.Bounds
		    
		    'that's why we check the position using .Left/.Top values
		    Dim currentWindowBounds As New REALbasic.Rect(poWindow.Left, poWindow.Top, poWindow.Width, poWindow.Height)
		    Return currentWindowBounds.IsOnScreen
		    
		  Catch err As RuntimeException
		    Return 0
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function MonitorCount() As Integer
		  #If TargetWindows Then
		    MonitorsGet
		    Return (eiMonitorHandles.Ubound + 1)
		    
		  #Else
		    Return ScreenCount
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Function MonitorEnumProc(hMonitor As Integer, hdc As Integer, lprect As Ptr, lparam As Integer) As Boolean
		  #Pragma X86CallingConvention StdCall
		  
		  #If TargetWindows Then
		    #Pragma unused hdc
		    #Pragma unused lprect
		    #Pragma unused lparam
		    
		    Dim rectMonitor As REALbasic.Rect = GetMonitorRect(hMonitor, False)
		    If (rectMonitor.Left = 0) And (rectMonitor.Top = 0) Then
		      eiMonitorHandles.Insert(0, hMonitor)
		    Else
		      eiMonitorHandles.Append(hMonitor)
		    End If
		    
		    Return True
		  #Else
		    #Pragma unused hMonitor
		    #Pragma unused hdc
		    #Pragma unused lprect
		    #Pragma unused lparam
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Function MonitorHandle(piMonitorIndex As Integer) As Integer
		  #If TargetWindows Then
		    MonitorsGet
		    If (eiMonitorHandles.Ubound >= piMonitorIndex) Then Return eiMonitorHandles(piMonitorIndex)
		    If (eiMonitorHandles.Ubound >= 0) Then Return eiMonitorHandles(0)
		  #Else
		    #Pragma unused piMonitorIndex
		  #EndIf
		  
		  Return 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private Sub MonitorsGet()
		  #If TargetWindows Then
		    Declare Function EnumDisplayMonitors Lib "User32" (hdc As Integer, lprcClip As Ptr, lpfnEnum As Ptr, lparam As Integer) As Boolean
		    
		    Redim eiMonitorHandles(-1)
		    Call EnumDisplayMonitors(0, Nil, AddressOf MonitorEnumProc, 0)
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub PutOnMonitorIndex(Extends poWindow As Window, piMonitorIndex As Integer = 0)
		  #If TargetWindows Then
		    Try
		      If (MonitorCount < 2) Then Return
		      If (eiMonitorHandles.Ubound < 0) Then Return
		      
		      If (piMonitorIndex >= MonitorCount) Then piMonitorIndex = 0
		      If (eiMonitorHandles.Ubound > piMonitorIndex) Then piMonitorIndex = 0
		      
		      Dim hMonOrig As Integer = poWindow.IsOnMonitorHandle
		      Dim hMon As Integer = eiMonitorHandles(piMonitorIndex)
		      
		      Dim rectWork As REALbasic.Rect = GetMonitorRect(hmon, True)
		      Dim rectWindowOrig As REALbasic.Rect = poWindow.GetWindowRect
		      Dim rectWindow As REALbasic.Rect = poWindow.GetWindowRect
		      
		      Dim iWidth As Integer = poWindow.Width
		      Dim iHeight As Integer = poWindow.Height
		      
		      Declare Function MoveWindow Lib "User32" (hWnd As Integer, x As Int32, y As Int32, nWidth As Int32, nHeight As Int32, bRepaint As Boolean) As Boolean
		      
		      'put on Monitor
		      If (hMon <> hMonOrig) Then
		        Call MoveWindow(poWindow.Handle, rectWork.Left, rectWork.Top, rectWindow.Width, rectWindow.Height, True)
		        'in case the ScaleFactor has changed... re-assign the original Width/Height (let Xojo Framework do that calculation)
		        If (poWindow.Width <> iWidth) Or (poWindow.Height <> iHeight) Then
		          poWindow.Width = iWidth
		          poWindow.Height = iHeight
		        End If
		      End If
		      
		      'get Window rect
		      rectWindowOrig = poWindow.GetWindowRect
		      rectWindow = poWindow.GetWindowRect
		      
		      'Window size needs to fit on Monitor
		      If (rectWindow.Width > rectWork.Width) Then rectWindow.Width = rectWork.Width
		      If (rectWindow.Height > rectWork.Height) Then rectWindow.Height = rectWork.Height
		      
		      'make sure it's fully visible (otherwise put in on left/top)
		      If (rectWindow.Left < rectWork.Left) Then rectWindow.Left = rectWork.Left
		      If ((rectWindow.Left+rectWindow.Width) > rectWork.Right) Then rectWindow.Left = rectWork.Left
		      
		      If (rectWindow.Top < rectWork.Top) Then rectWindow.Top = rectWork.Top
		      If ((rectWindow.Top+rectWindow.Height) > rectWork.Bottom) Then rectWindow.Top = rectWork.Top
		      
		      'finally: assign the position
		      If (rectWindowOrig.Left <> rectWindow.Left) Or (rectWindowOrig.Top <> rectWindow.Top) Or (rectWindowOrig.Width <> rectWindow.Width) Or (rectWindowOrig.Height <> rectWindow.Height) Then
		        Call MoveWindow(poWindow.Handle, rectWindow.Left, rectWindow.Top, rectWindow.Width, rectWindow.Height, True)
		        'in case the ScaleFactor has changed... re-assign the original Width/Height (let Xojo Framework do that calculation)
		        If (poWindow.Width <> iWidth) Or (poWindow.Height <> iHeight) Then
		          poWindow.Width = iWidth
		          poWindow.Height = iHeight
		        End If
		      End If
		      
		    Catch err As RuntimeException
		      'ignore
		    End Try
		    
		  #Else
		    poWindow.PutOnScreen(piMonitorIndex)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub PutOnScreen(Extends poWindow As Window, piScreen As Integer = 0)
		  Try
		    If (ScreenCount < 2) Then Return
		    
		    If (piScreen >= ScreenCount) Then piScreen = 0
		    Dim oScreen As Screen = Screen(piScreen)
		    Dim iScreenAvailableLeft As Integer = oScreen.AvailableLeft
		    
		    'use Bounds (respects window decoration, toolbar)
		    Dim currentWindowBounds As REALbasic.Rect = poWindow.Bounds
		    Dim setWindowBounds As New REALbasic.Rect(currentWindowBounds.Left, currentWindowBounds.Top, currentWindowBounds.Width, currentWindowBounds.Height)
		    
		    'Window size needs to fit on Screen
		    If (setWindowBounds.Width > oScreen.AvailableWidth) Then setWindowBounds.Width = oScreen.AvailableWidth
		    If (setWindowBounds.Height > oScreen.AvailableHeight) Then setWindowBounds.Height = oScreen.AvailableHeight
		    
		    'make sure it's fully visible (otherwise put in on left/top)
		    If (setWindowBounds.Left < iScreenAvailableLeft) Then setWindowBounds.Left = iScreenAvailableLeft
		    If (setWindowBounds.Left > (iScreenAvailableLeft + oScreen.AvailableWidth - setWindowBounds.Width)) Then setWindowBounds.Left = iScreenAvailableLeft
		    
		    If (setWindowBounds.Top < oScreen.AvailableTop) Then setWindowBounds.Top = oScreen.AvailableTop
		    If (setWindowBounds.Top > (oScreen.AvailableTop + oScreen.AvailableHeight - setWindowBounds.Height)) Then setWindowBounds.Top = oScreen.AvailableTop
		    
		    
		    'finally: assign the position
		    poWindow.Bounds = setWindowBounds
		    
		  Catch err As RuntimeException
		    'ignore
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub SetPosition_AtMonitorPosition(Extends poWindow As Window, piMonitorIndex As Integer, piPosX As Integer, piPosY As Integer)
		  #If TargetWindows Then
		    Try
		      'just to double-check later
		      Dim iWindowWidth As Integer = poWindow.Width
		      Dim iWindowHeight As Integer = poWindow.Height
		      
		      '1 Screen or Placement on main Screen(0) is never an issue
		      If (ScreenCount = 1) Then
		        poWindow.Left = piPosX
		        poWindow.Top = piPosY
		        If (poWindow.Width <> iWindowWidth) Or (poWindow.Height <> iWindowHeight) Then
		          poWindow.Width = iWindowWidth
		          poWindow.Height = iWindowHeight
		        End If
		        'make sure it fits on the Monitor
		        poWindow.FitOnMonitor
		        Return
		      End If
		      
		      
		      Dim hMon As Integer = MonitorHandle(piMonitorIndex)
		      
		      'make sure it's on the desired monitor first
		      poWindow.FitOnMonitor(hMon)
		      
		      Dim rectMonitor As REALbasic.Rect = GetMonitorRect(hmon, False)
		      Dim rectWindow As REALbasic.Rect = poWindow.GetWindowRect
		      Dim dScale As Double = Round((rectWindow.Height / poWindow.Bounds.Height)*100)/100
		      
		      'now position relative to Monitor
		      rectWindow.Left = rectMonitor.Left + Ceil(piPosX * dScale)
		      rectWindow.Top = rectMonitor.Top + Ceil(piPosY * dScale)
		      
		      'respect size of window decoration
		      Dim iWindowLeftDecoration As Integer = poWindow.Left - poWindow.Bounds.Left
		      Dim iWindowTopDecoration As Integer = poWindow.Top - poWindow.Bounds.Top
		      rectWindow.Left = rectWindow.Left - Ceil(iWindowLeftDecoration * dScale)
		      rectWindow.Top = rectWindow.Top - Ceil(iWindowTopDecoration * dScale)
		      
		      'is it still on the Monitor?
		      If (rectWindow.Left < rectMonitor.Left) Then rectWindow.Left = rectMonitor.Left
		      If (rectWindow.Left + rectWindow.Width) > (rectMonitor.Left + rectMonitor.Width) Then rectWindow.Left = rectMonitor.Left + rectMonitor.Width - rectWindow.Width
		      If (rectWindow.Top < rectMonitor.Top) Then rectWindow.Top = rectMonitor.Top
		      If (rectWindow.Top + rectWindow.Height) > (rectMonitor.Top + rectMonitor.Height) Then rectWindow.Top = rectMonitor.Top + rectMonitor.Height - rectWindow.Height
		      
		      'assign position
		      Declare Function MoveWindow Lib "User32" (hWnd As Integer, x As Int32, y As Int32, nWidth As Int32, nHeight As Int32, bRepaint As Boolean) As Boolean
		      
		      Call MoveWindow(poWindow.Handle, rectWindow.Left, rectWindow.Top, rectWindow.Width, rectWindow.Height, True)
		      If (poWindow.Width <> iWindowWidth) Or (poWindow.Height <> iWindowHeight) Then
		        poWindow.Width = iWindowWidth
		        poWindow.Height = iWindowHeight
		      End If
		      
		    Catch err As RuntimeException
		      'ignore
		      
		    Finally
		      'make sure it fits on the Monitor
		      poWindow.FitOnMonitor
		    End Try
		    
		    
		  #Else
		    poWindow.SetPosition_AtScreenPosition(piMonitorIndex, piPosX, piPosY)
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub SetPosition_AtScreenPosition(Extends poWindow As Window, piScreenIndex As Integer, piPosX As Integer, piPosY As Integer)
		  If (piScreenIndex < 0) Then piScreenIndex = 0
		  If (piScreenIndex > (ScreenCount-1)) Then piScreenIndex = 0
		  
		  poWindow.Left = Screen(piScreenIndex).Left + piPosX
		  poWindow.Top = Screen(piScreenIndex).Top + piPosY
		  
		  'This is buggy, too - so let's just see what happens when setting the position
		  'poWindow.FitOnScreen()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub SetPosition_CenterToParent(Extends poWindow As Window, poParent As Window)
		  If (poParent = Nil) Then Return
		  
		  #If TargetWindows Then
		    
		    Try
		      'put it on the same Monitor as it's parent first
		      poWindow.FitOnMonitor(poParent.IsOnMonitorHandle)
		      
		      Dim rectParent As REALbasic.Rect = poParent.GetWindowRect
		      Dim rectWindow As REALbasic.Rect = poWindow.GetWindowRect
		      
		      'the scale factor is
		      Dim dScale As Double = Round((rectParent.Height / poParent.Bounds.Height)*100)/100
		      
		      If (rectWindow.Width >= rectParent.Width - (10*dScale)) And (rectWindow.Height >= rectParent.Height - (10*dScale)) Then
		        'if it overlaps the parent, put it a bit below
		        rectWindow.Left = rectParent.Left + Ceil(20*dScale)
		        rectWindow.Top = rectParent.Top + Ceil(40*dScale)
		      Else
		        'center in parent
		        rectWindow.Left = rectParent.Left + Ceil((rectParent.Width - rectWindow.Width)/2)
		        rectWindow.Top = rectParent.Top + Ceil((rectParent.Height - rectWindow.Height)/2)
		      End If
		      
		      'assign position
		      Declare Function MoveWindow Lib "User32" (hWnd As Integer, x As Int32, y As Int32, nWidth As Int32, nHeight As Int32, bRepaint As Boolean) As Boolean
		      Call MoveWindow(poWindow.Handle, rectWindow.Left, rectWindow.Top, rectWindow.Width, rectWindow.Height, True)
		      
		    Catch err As RuntimeException
		      'ignore
		      
		    Finally
		      'just to make sure it fits on Monitor
		      poWindow.FitOnMonitor
		    End Try
		    
		  #Else
		    Dim iParentIsOnScreen As Integer = -1
		    
		    If (poParent <> Nil) Then
		      iParentIsOnScreen = poParent.IsOnScreen
		      poWindow.PutOnScreen(iParentIsOnScreen)
		      
		      Dim parentWindowBounds As REALbasic.Rect = poParent.Bounds
		      Dim currentWindowBounds As REALbasic.Rect = poWindow.Bounds
		      Dim setWindowBounds As New REALbasic.Rect(currentWindowBounds.Left, currentWindowBounds.Top, currentWindowBounds.Width, currentWindowBounds.Height)
		      
		      If (poWindow.Width >= poParent.Width - 10) And (poWindow.Height >= poParent.Height - 10) Then
		        'if it overlaps the parent, put it a bit below
		        setWindowBounds.Left = parentWindowBounds.Left + 20
		        setWindowBounds.Top = parentWindowBounds.Top + 40
		      Else
		        'center in parent
		        setWindowBounds.Left = parentWindowBounds.Left + ((parentWindowBounds.Width - setWindowBounds.Width) / 2)
		        setWindowBounds.Top = parentWindowBounds.Top + ((parentWindowBounds.Height - setWindowBounds.Height) / 2)
		      End If
		      
		      'assign position
		      poWindow.Bounds = setWindowBounds
		    End If
		    
		    'just to make sure it fits on Screen
		    poWindow.FitOnScreen(iParentIsOnScreen)
		    
		  #EndIf
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Sub SetPosition_UsingRect(Extends poWindow As Window, poSetPositionRect As REALbasic.Rect, poParent As Window = nil)
		  'Rectangle is representing the Window, but using it's .Top/.Left/.Width/.Height
		  'and NOT using it's bounds!
		  
		  'the Parent Window is used to first move the Window to the same Screen,
		  'as this fixes some positioning issues
		  
		  '1 Screen or Placement on main Screen(0) is never an issue
		  If (ScreenCount = 1) Or ((poParent = Nil) And (poSetPositionRect.Left >= Screen(0).Left) And (poSetPositionRect.Left < Screen(0).Width) And (poSetPositionRect.Top >= Screen(0).Top) And (poSetPositionRect.Top < Screen(0).Height)) Then
		    poWindow.PutOnMonitorIndex(0)
		    'assign position
		    If (poWindow.Width <> poSetPositionRect.Width) Then poWindow.Width = poSetPositionRect.Width
		    If (poWindow.Height <> poSetPositionRect.Height) Then poWindow.Height = poSetPositionRect.Height
		    If (poWindow.Left <> poSetPositionRect.Left) Then poWindow.Left = poSetPositionRect.Left
		    If (poWindow.Top <> poSetPositionRect.Top) Then poWindow.Top = poSetPositionRect.Top
		    'just to make sure
		    If (poWindow.Width <> poSetPositionRect.Width) Then poWindow.Width = poSetPositionRect.Width
		    If (poWindow.Height <> poSetPositionRect.Height) Then poWindow.Height = poSetPositionRect.Height
		    
		    'make sure it fits on the Screen
		    poWindow.FitOnScreen
		    Return
		  End If
		  
		  #If TargetWindows Then
		    Try
		      Dim rectWindow As REALbasic.Rect
		      Dim dScale As Double = 1.0
		      
		      If (poParent = Nil) Then
		        'put on on the Monitor first
		        Dim iPosRectIsOnMonitorIndex As Integer = 0
		        #If (XojoVersion < 2018.04) Then
		          //<feedback://showreport?report_id=53050>
		          'Window.Left is the absolute position on Screen>0
		          'But Screen.Left reports the virtual position, however somehow mangled with the main screen's ScaleFactor.
		          
		          'so it seems best to get the destination Monitor like this:
		          'iPosRectIsOnMonitorIndex = poSetPositionRect.IsOnMonitorIndex
		          
		          poWindow.PutOnMonitorIndex(0)
		          rectWindow = poWindow.GetWindowRect
		          Dim dScale0 As Double = Round((rectWindow.Height / poWindow.Bounds.Height)*100)/100
		          
		          For i As Integer = 1 To ScreenCount-1
		            poWindow.PutOnMonitorIndex(i)
		            rectWindow = poWindow.GetWindowRect
		            Dim dScaleCurrentMonitor As Double = Round((rectWindow.Height / poWindow.Bounds.Height)*100)/100
		            Dim iScreenLeft As Integer = Screen(i).Left * dScale0 / dScaleCurrentMonitor
		            Dim iScreenTop As Integer = Screen(i).Top * dScale0 / dScaleCurrentMonitor
		            If (poSetPositionRect.Left >= iScreenLeft) And (poSetPositionRect.Left < Screen(0).Width) And (poSetPositionRect.Top >= iScreenTop) And (poSetPositionRect.Top < Screen(0).Height) Then
		              iPosRectIsOnMonitorIndex = i
		              Exit 'Loop
		            End If
		          Next
		          
		        #Else
		          'Window.Left is the virtual position on Screen>0
		          'And Screen.Left reports the virtual position
		          'so let's check with Xojo's Screen(s), which should work again
		          'to figure out the destination Monitor/Screen
		          
		          'we obviously can't use the workaround from above, as IsOnMonitor is using
		          'the absolute positions, but Window.Left doesn't do that any longer
		          iPosRectIsOnMonitorIndex = poSetPositionRect.IsOnScreen
		        #EndIf
		        poWindow.PutOnMonitorIndex(iPosRectIsOnMonitorIndex)
		        
		        'that's because we need the ScaleFactor to calculate the WindowsAPI position
		        rectWindow = poWindow.GetWindowRect
		        dScale = Round((rectWindow.Height / poWindow.Bounds.Height)*100)/100
		        
		        'set the desired .Width/.Height
		        If (poWindow.Width <> poSetPositionRect.Width) Then poWindow.Width = poSetPositionRect.Width
		        If (poWindow.Height <> poSetPositionRect.Height) Then poWindow.Height = poSetPositionRect.Height
		        
		        'get the updated Rect
		        rectWindow = poWindow.GetWindowRect
		        
		        'position it
		        //NOTE: We're relying on Xojo here... things may go wrong...
		        #If (XojoVersion < 2018.04) Then
		          rectWindow.Left = Ceil(poSetPositionRect.Left * dScale)
		          rectWindow.Top = Ceil(poSetPositionRect.Top * dScale)
		          
		          'Position values relative to Monitor
		          Dim iMonitorIndex As Integer = rectWindow.IsOnMonitorIndex
		          Dim rectMonitor As REALbasic.Rect = GetMonitorRect(MonitorHandle(iMonitorIndex), False)
		          're-scale in Xojo coordinates
		          Dim iPosX As Integer = Ceil((rectWindow.Left - rectMonitor.Left)/dScale)
		          Dim iPosY As Integer = Ceil((rectWindow.Top - rectMonitor.Top)/dScale)
		          'place it at the desired Position on the Monitor
		          poWindow.SetPosition_AtMonitorPosition(iMonitorIndex, iPosX, iPosY)
		        #Else
		          //Xojo 2018r4 seems to use virtual coordinates on all Screens
		          'so let's just let Xojo set the position again
		          poWindow.Left = poSetPositionRect.Left
		          poWindow.Top = poSetPositionRect.Top
		          poWindow.FitOnMonitorIndex(iPosRectIsOnMonitorIndex)
		        #EndIf
		        
		        'all done
		        Return
		      Else
		        'make sure it's on the same monitor first
		        poWindow.FitOnMonitor(poParent.IsOnMonitorHandle)
		        rectWindow = poWindow.GetWindowRect
		        dScale = Round((rectWindow.Height / poWindow.Bounds.Height)*100)/100
		      End If
		      
		      'now position relative to parent
		      Dim iLeftAdd As Integer = poSetPositionRect.Left - poParent.Left
		      Dim iTopAdd As Integer = poSetPositionRect.Top - poParent.Top
		      
		      'respect size of window decoration
		      Dim iWindowLeftDecoration As Integer = poWindow.Left - poWindow.Bounds.Left
		      Dim iWindowTopDecoration As Integer = poWindow.Top - poWindow.Bounds.Top
		      
		      'the parent's decoration might be different
		      Dim rectParent As REALbasic.Rect = poParent.GetWindowRect
		      Dim iParentLeftDecoration As Integer = poParent.Left - poParent.Bounds.Left
		      Dim iParentTopDecoration As Integer = poParent.Top - poParent.Bounds.Top
		      
		      'we need to account for this difference
		      Dim iLeftAddDecoration As Integer = iParentLeftDecoration - iWindowLeftDecoration
		      Dim iTopAddDecoration As Integer = iParentTopDecoration - iWindowTopDecoration
		      
		      Declare Function MoveWindow Lib "User32" (hWnd As Integer, x As Int32, y As Int32, nWidth As Int32, nHeight As Int32, bRepaint As Boolean) As Boolean
		      
		      Call MoveWindow(poWindow.Handle, rectParent.Left + Ceil(iLeftAdd*dScale) + Ceil(iLeftAddDecoration*dScale), rectParent.Top + Ceil(iTopAdd*dScale) + Ceil(iTopAddDecoration*dScale), Ceil(poSetPositionRect.Width*dScale), Ceil(poSetPositionRect.Height*dScale), True)
		      If (poWindow.Width <> poSetPositionRect.Width) Or (poWindow.Height <> poSetPositionRect.Height) Then
		        poWindow.Width = poSetPositionRect.Width
		        poWindow.Height = poSetPositionRect.Height
		      End If
		      
		    Catch err As RuntimeException
		      'ignore
		      
		    Finally
		      'make sure it fits on the Monitor
		      poWindow.FitOnMonitor
		    End Try
		    
		    Return
		    
		    
		  #Else
		    If (poParent = Nil) Then
		      'make sure it's on the screen (so that it gets its ScaleFactor assigned)
		      poWindow.PutOnScreen(poSetPositionRect.IsOnScreen)
		    Else
		      'make sure it's on the same monitor first
		      poWindow.PutOnScreen(poParent.IsOnScreen)
		    End If
		    
		    'assign position
		    If (poWindow.Width <> poSetPositionRect.Width) Then poWindow.Width = poSetPositionRect.Width
		    If (poWindow.Height <> poSetPositionRect.Height) Then poWindow.Height = poSetPositionRect.Height
		    If (poWindow.Left <> poSetPositionRect.Left) Then poWindow.Left = poSetPositionRect.Left
		    If (poWindow.Top <> poSetPositionRect.Top) Then poWindow.Top = poSetPositionRect.Top
		    'just to make sure
		    If (poWindow.Width <> poSetPositionRect.Width) Then poWindow.Width = poSetPositionRect.Width
		    If (poWindow.Height <> poSetPositionRect.Height) Then poWindow.Height = poSetPositionRect.Height
		    
		    'make sure it fits on the Screen
		    poWindow.FitOnScreen
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Private eiMonitorHandles() As Integer
	#tag EndProperty


	#tag Structure, Name = LPMONITORINFO, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		cbSize as UInt32
		  rcMonitor as LPRECT
		  rcWork as LPRECT
		  dwFlags as UInt32
		szDevice as WString*64
	#tag EndStructure

	#tag Structure, Name = LPRECT, Flags = &h21, CompatibilityFlags = (TargetDesktop and (Target32Bit or Target64Bit))
		Left as Int32
		  Top as Int32
		  Right as Int32
		Bottom as Int32
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
