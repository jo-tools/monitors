#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   620
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1670486015
   MenuBarVisible  =   True
   MinimumHeight   =   620
   MinimumWidth    =   540
   Resizeable      =   True
   Title           =   "Monitors"
   Type            =   0
   Visible         =   True
   Width           =   540
   Begin DesktopButton btnXojoCenterLeftTop
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal (using .Left, .Top)"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   409
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopButton btnXojoCenterBounds
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal (using .Bounds)"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   443
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopTextArea edtScreens
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "True"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   67
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   "0"
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "True"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   138
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   240
   End
   Begin Timer timRefresh
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   True
      Mode            =   2
      Period          =   250
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin DesktopLabel labIsOnScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   75
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   282
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   250
   End
   Begin DesktopLabel labIsOnMonitor
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   75
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   282
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopLabel labWindowRect
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   65
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopButton btnFitOnMonitor
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "FitOnMonitor"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   477
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopButton btnCenterModal
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   443
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopLabel labXojo
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Using Xojo's API"
      TextAlign       =   "2"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopLabel labWindowsAPI
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Using Windows API"
      TextAlign       =   "2"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   238
   End
   Begin DesktopPopupMenu lstAddX
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   268
      ListIndex       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu lstAddY
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   340
      ListIndex       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopButton btnSetPosRelativeWinAPI
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   459
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopLabel labXY
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "relative to Window (+x,+y):"
      TextAlign       =   "3"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin DesktopSeparator sepInfo
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      AutoDeactivate  =   "True"
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   392
      Transparent     =   False
      Visible         =   True
      Width           =   540
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopButton btnFitOnScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "FitOnScreen"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   477
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopButton btnSetPosRelative
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopLabel labWindowPosition
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   65
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopTextArea edtMonitors
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "True"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   67
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   280
      LimitText       =   "0"
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   "False"
      ScrollbarVertical=   "True"
      Styled          =   "True"
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   138
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   0
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   240
   End
   Begin DesktopLabel labSetPosOnScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "on Screen:"
      TextAlign       =   "3"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin DesktopPopupMenu lstPosScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   166
      ListIndex       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopLabel labSetPosOnScreenAtPos
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "at Pos (x,y):"
      TextAlign       =   "3"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin DesktopTextField edtPosScreenX
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "False"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   320
      LimitText       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "100"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   50
   End
   Begin DesktopTextField edtPosScreenY
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "False"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   382
      LimitText       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "100"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   50
   End
   Begin DesktopButton btnSetPosOnScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopButton btnSetPosOnScreenWinAPI
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   459
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopLabel labPosRelativeOnMonitor
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopLabel labPosAbsoluteXY
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "at Xojo Window.Left/Top:"
      TextAlign       =   "3"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin DesktopButton btnSetPosAbsoluteWinAPI
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   459
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopButton btnSetPosAbsolute
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin DesktopTextField edtPosAbsoluteX
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "False"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   268
      LimitText       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   580
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   60
   End
   Begin DesktopTextField edtPosAbsoluteY
      AcceptTabs      =   "False"
      Alignment       =   "0"
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      AutomaticallyCheckSpelling=   "False"
      BackColor       =   "&cFFFFFF00"
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Border          =   "True"
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LimitText       =   "0"
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   580
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   "True"
      ValidationMask  =   ""
      Visible         =   True
      Width           =   60
   End
   Begin DesktopSeparator sepTop
      Active          =   False
      AllowAutoDeactivate=   True
      AllowTabStop    =   True
      AutoDeactivate  =   "True"
      Enabled         =   True
      Height          =   3
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   100
      Transparent     =   True
      Visible         =   True
      Width           =   540
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopLabel labPosRelativeOnScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlign       =   "0"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin DesktopCanvas cnvAppIcon
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      Backdrop        =   0
      DoubleBuffer    =   "False"
      Enabled         =   True
      EraseBackground =   "True"
      Height          =   64
      HelpTag         =   "#constWebsiteUrl"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   64
   End
   Begin DesktopLabel labAppName
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      HelpTag         =   "#constWebsiteUrl"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AppName"
      TextAlign       =   "2"
      TextAlignment   =   0
      TextColor       =   &c0072D800
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   160
   End
   Begin DesktopLabel labThanks
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Would you like to say 'Thank you'?"
      TextAlign       =   "3"
      TextAlignment   =   0
      TextColor       =   &c66666600
      TextFont        =   "SmallSystem"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   209
   End
   Begin DesktopLabel labAppVersion
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AppVersion"
      TextAlign       =   "2"
      TextAlignment   =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   54
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   160
   End
   Begin DesktopLabel labContact
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      HelpTag         =   "xojo@jo-tools.ch"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   334
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Contact"
      TextAlign       =   "2"
      TextAlignment   =   0
      TextColor       =   &c0072CE00
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   55
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   70
   End
   Begin DesktopCanvas cnvPayPal
      AcceptFocus     =   "False"
      AcceptTabs      =   "False"
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      AutoDeactivate  =   "True"
      Backdrop        =   0
      DoubleBuffer    =   "False"
      Enabled         =   True
      EraseBackground =   "True"
      Height          =   30
      HelpTag         =   "https://paypal.me/jotools"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   414
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   55
      Transparent     =   True
      UseFocusRing    =   "True"
      Visible         =   True
      Width           =   106
   End
   Begin DesktopButton btnFullScreen
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Enter FullScreen"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   280
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "0.0"
      TextUnit        =   "0"
      Tooltip         =   ""
      Top             =   409
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  Self.Title = "Monitors"
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private edictFullScreen As Dictionary
	#tag EndProperty


	#tag Constant, Name = constAppName, Type = String, Dynamic = False, Default = \"Monitors", Scope = Private
	#tag EndConstant

	#tag Constant, Name = constWebsiteUrl, Type = String, Dynamic = False, Default = \"https://www.jo-tools.ch/xojo/monitors/", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnXojoCenterLeftTop
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  oWnd.Left = Self.Left + ((Self.Width - oWnd.Width)/2)
		  oWnd.Top = Self.Top + ((Self.Height - oWnd.Height)/2)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnXojoCenterBounds
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  
		  Dim wndParentBounds As Xojo.Rect = Self.Bounds
		  Dim wndBounds As Xojo.Rect = oWnd.Bounds
		  Dim setBounds As New Xojo.Rect(wndBounds.Left, wndBounds.Top, wndBounds.Width, wndBounds.Height)
		  setBounds.Left = wndParentBounds.Left + ((wndParentBounds.Width - setBounds.Width)/2)
		  setBounds.Top = wndParentBounds.Top + ((wndParentBounds.Height - setBounds.Height)/2)
		  oWnd.Bounds = setBounds
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtScreens
	#tag Event
		Sub Opening()
		  Dim sScreens() As String
		  For i As Integer = 0 To DesktopDisplay.DisplayCount-1
		    sScreens.Add("Screen(" + Str(i) + ") => " + _
		    "Left: " + Str(DesktopDisplay.DisplayAt(i).Left) + _
		    ", Top: " + Str(DesktopDisplay.DisplayAt(i).Top) + _
		    ", Width: " + Str(DesktopDisplay.DisplayAt(i).Width) + _
		    ", Height: " + Str(DesktopDisplay.DisplayAt(i).Height) + _
		    EndOfLine)
		  Next
		  
		  Me.Text = String.FromArray(sScreens, EndOfLine)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timRefresh
	#tag Event
		Sub Action()
		  Dim iIsOnScreen As Integer = Self.IsOnScreen
		  labIsOnScreen.Text = "IsOnScreen: " + Str(iIsOnScreen) + EndOfLine + _
		  "Left: " + Str(DesktopDisplay.DisplayAt(iIsOnScreen).Left) + ", Top: " + Str(DesktopDisplay.DisplayAt(iIsOnScreen).Top) + EndOfLine + _
		  "Dimension: " + Str(DesktopDisplay.DisplayAt(iIsOnScreen).Width) + "x" + Str(DesktopDisplay.DisplayAt(iIsOnScreen).Height) + EndOfLine + _
		  "ScaleFactor: " + Format(Self.ScaleFactor, "#0.0#")
		  
		  labWindowPosition.Text = "Window.Bounds: " + _
		  "Left: " + Str(Self.Bounds.Left) + ", Top: " + Str(Self.Bounds.Top) + EndOfLine + _
		  Str(Self.Bounds.Width) + "x" + Str(Self.Bounds.Height) + EndOfLine + _
		  "Window.Pos: " + _
		  "Left: " + Str(Self.Left) + ", Top: " + Str(Self.Top) + EndOfLine + _
		  Str(Self.Width) + "x" + Str(Self.Height)
		  
		  #If TargetWindows Then
		    Dim hMon As Integer = Self.IsOnMonitorHandle
		    Dim oRect As Xojo.Rect = GetMonitorRect(hMon, False)
		    Dim dScale As Double = Round((Self.GetWindowRect.Height / Self.Bounds.Height)*100)/100
		    
		    labIsOnMonitor.Text = "IsOnMonitor: " + Str(hMon) + " (MonitorIndex: " + Str(Self.IsOnMonitorIndex) + ")" + EndOfLine + _
		    "Left: " + Str(oRect.Left) + ", Top: " + Str(oRect.Top) + EndOfLine + _
		    Str(oRect.Width) + "x" + Str(oRect.Height) + EndOfLine + _
		    "ScaleFactor: " + Format(dScale, "#0.0#")
		    
		    oRect = Self.GetWindowRect
		    labWindowRect.Text = "WindowRect: " + _
		    "Left: " + Str(oRect.Left) + ", Top: " + Str(oRect.Top) + EndOfLine + _
		    Str(oRect.Width) + "x" + Str(oRect.Height)
		  #Else
		    labIsOnMonitor.Text = "n/a"
		    labWindowRect.Text = "n/a"
		  #EndIf
		  
		  Dim iPosX, iPosY As Integer
		  
		  Dim iScreen As Integer = Self.IsOnScreen 'that's just using Xojo Framework (for WindowsAPI, use self.IsOnMonitorIndex)
		  iPosX = Self.Left - DesktopDisplay.DisplayAt(iScreen).Left
		  iPosY = Self.Top - DesktopDisplay.DisplayAt(iScreen).Top
		  labPosRelativeOnScreen.Text = "at relative Screen Pos: " + Str(iPosX) + "x, " + Str(iPosY) + "y"
		  
		  Self.IsAtRelativeMonitorPosition(iPosX, iPosY) 'that's using Windows API if possible
		  labPosRelativeOnMonitor.Text = "at relative Monitor Pos: " + Str(iPosX) + "x, " + Str(iPosY) + "y"
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFitOnMonitor
	#tag Event
		Sub Pressed()
		  Self.FitOnMonitor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCenterModal
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  oWnd.SetPosition_CenterToParent(Self)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAddX
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  For i As Integer = -500 To 500 Step 50
		    Me.AddRow Str(i)
		  Next
		  Me.SelectedRowIndex = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAddY
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  For i As Integer = -500 To 500 Step 50
		    Me.AddRow Str(i)
		  Next
		  Me.SelectedRowIndex = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosRelativeWinAPI
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  
		  Dim setPositionRect As New Xojo.Rect
		  
		  setPositionRect.Left = Self.Left + Val(lstAddX.SelectedRowText)
		  setPositionRect.Top = Self.Top + Val(lstAddY.SelectedRowText)
		  setPositionRect.Width = oWnd.Width
		  setPositionRect.Height = oWnd.Height
		  
		  oWnd.SetPosition_UsingRect(setPositionRect, Self)
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFitOnScreen
	#tag Event
		Sub Pressed()
		  Self.FitOnScreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosRelative
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  
		  oWnd.Left = Self.Left + Val(lstAddX.SelectedRowText)
		  oWnd.Top = Self.Top + Val(lstAddY.SelectedRowText)
		  
		  'This is buggy, too - so let's just see what happens when setting the position
		  'oWnd.FitOnScreen()
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtMonitors
	#tag Event
		Sub Opening()
		  #If TargetWindows Then
		    Dim sMonitors() As String
		    For i As Integer = 0 To MonitorCount-1
		      Dim hMon As Integer = MonitorHandle(i)
		      Dim oRect As Xojo.Rect = GetMonitorRect(hMon, False)
		      
		      If System.IsFunctionAvailable("GetDpiForMonitor", "Shcore") Then
		        Soft Declare Function GetDpiForMonitor Lib "Shcore" (hMonitor As Integer, dpiType As Integer, ByRef dpiX As UInt32, ByRef dpiY As UInt32) As Integer
		        Const MDT_Effective_DPI = 0
		        Dim Effxdpi, Effydpi As UInt32
		        Call GetDpiForMonitor(hMon, MDT_Effective_DPI, Effxdpi, Effydpi)
		        'Dim dRatio As Double =  Effxdpi/96
		      End If
		      
		      sMonitors.Append("Monitor(" + Str(i) + ") => " + _
		      "Handle: " + Str(MonitorHandle(i)) + _
		      ", Left: " + Str(oRect.Left) + ", Top: " + Str(oRect.Top) + _
		      ", Width: " + Str(oRect.Width) + ", Height: " + Str(oRect.Height) + _
		      EndOfLine)
		      '"ScaleFactor (ratio): " + Format(dRatio, "#0.0#") + _
		    Next
		    
		    Me.Text = Join(sMonitors, EndOfLine)
		  #Else
		    Me.Text = "n/a"
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstPosScreen
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  For i As Integer = 0 To DesktopDisplay.DisplayCount-1
		    Me.AddRow(Str(i))
		  Next
		  
		  Me.SelectedRowIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosOnScreen
	#tag Event
		Sub Pressed()
		  Dim iScreen As Integer = Val(lstPosScreen.SelectedRowText)
		  
		  Dim iPosX As Integer = Val(edtPosScreenX.Text)
		  Dim iPosY As Integer = Val(edtPosScreenY.Text)
		  
		  
		  Dim oWnd As New Window2
		  oWnd.SetPosition_AtScreenPosition(iScreen, iPosX, iPosY)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosOnScreenWinAPI
	#tag Event
		Sub Pressed()
		  Dim iMonitor As Integer = Val(lstPosScreen.SelectedRowText)
		  
		  Dim iPosX As Integer = Val(edtPosScreenX.Text)
		  Dim iPosY As Integer = Val(edtPosScreenY.Text)
		  
		  
		  Dim oWnd As New Window2
		  oWnd.SetPosition_AtMonitorPosition(iMonitor, iPosX, iPosY)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosAbsoluteWinAPI
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  
		  Dim setPositionRect As New Xojo.Rect
		  
		  setPositionRect.Left = Val(edtPosAbsoluteX.Text)
		  setPositionRect.Top = Val(edtPosAbsoluteY.Text)
		  setPositionRect.Width = oWnd.Width
		  setPositionRect.Height = oWnd.Height
		  
		  oWnd.SetPosition_UsingRect(setPositionRect, Nil)
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosAbsolute
	#tag Event
		Sub Pressed()
		  Dim oWnd As New Window2
		  
		  oWnd.Left = Val(edtPosAbsoluteX.Text)
		  oWnd.Top = Val(edtPosAbsoluteY.Text)
		  
		  'This is buggy, too - so let's just see what happens when setting the position
		  'oWnd.FitOnScreen()
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvAppIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma unused areas
		  
		  g.DrawPicture(AppIcon_64, 0, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL(constWebsiteUrl)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labAppName
	#tag Event
		Sub Opening()
		  Me.Text = constAppName
		  Me.FontSize = 18
		  Me.Bold = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL(constWebsiteUrl)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labAppVersion
	#tag Event
		Sub Opening()
		  If (App.Version <> "") Then
		    Me.Text = App.Version
		    Return
		  End If
		  
		  Me.Text = App.MajorVersion.ToString + "." + App.MinorVersion.ToString + "." + App.BugVersion.ToString
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events labContact
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("mailto:xojo@jo-tools.ch")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPayPal
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  #Pragma unused areas
		  
		  g.DrawingColor = &cFFFFFF
		  If Color.IsDarkMode Then g.DrawingColor = &cD0D0D0
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  g.DrawingColor = &c909090
		  g.DrawRectangle(0, 0, g.Width, g.Height)
		  g.DrawPicture(PayPal, 3, 2, 100, 26, 0, 0, PayPal.Width, PayPal.Height)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = Nil
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    System.GotoURL("https://paypal.me/jotools")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btnFullScreen
	#tag Event
		Sub Pressed()
		  #If TargetWindows Then
		    If (edictFullScreen = Nil) Then edictFullScreen = New Dictionary
		    
		    Dim iMonitorIndex, iPosX, iPosY As Integer
		    
		    If Self.FullScreen Then
		      Me.Caption = "Enter FullScreen"
		      Self.MenuBar = MainMenuBar
		      Self.FullScreen = False
		      
		      iMonitorIndex = edictFullScreen.Lookup("iMonitorIndex", Self.IsOnMonitorIndex)
		      iPosX = edictFullScreen.Lookup("iPosX", 0)
		      iPosY = edictFullScreen.Lookup("iPosY", 0)
		      Self.SetPosition_AtMonitorPosition(iMonitorIndex, iPosX, iPosY)
		      
		    Else
		      Me.Caption = "Exit FullScreen"
		      iMonitorIndex = Self.IsOnMonitorIndex
		      Self.IsAtRelativeMonitorPosition(iPosX, iPosY)
		      
		      edictFullScreen.Value("iMonitorIndex") = iMonitorIndex
		      edictFullScreen.Value("iPosX") = iPosX
		      edictFullScreen.Value("iPosY") = iPosY
		      
		      Self.MenuBar = Nil
		      Self.FullScreen = True
		      
		      Self.FitOnMonitorIndex(iMonitorIndex)
		    End If
		    
		  #Else
		    MessageBox "Enter FullScreen is not implemented for this build target."
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="540"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="350"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
