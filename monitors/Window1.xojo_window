#tag Window
Begin Window Window1
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   620
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1670486015
   MenuBarVisible  =   True
   MinHeight       =   620
   MinimizeButton  =   True
   MinWidth        =   540
   Placement       =   0
   Resizeable      =   True
   Title           =   "Monitors"
   Visible         =   True
   Width           =   540
   Begin PushButton btnXojoCenterLeftTop
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal (using .Left, .Top)"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   409
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin PushButton btnXojoCenterBounds
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal (using .Bounds)"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   443
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin TextArea edtScreens
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   67
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   138
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   240
   End
   Begin Timer timRefresh
      Index           =   -2147483648
      LockedInPosition=   True
      Mode            =   2
      Period          =   250
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin Label labIsOnScreen
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   282
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   250
   End
   Begin Label labIsOnMonitor
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   282
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin Label labWindowRect
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin PushButton btnFitOnMonitor
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "FitOnMonitor"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   477
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin PushButton btnCenterModal
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Center Modal"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   443
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin Label labXojo
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin Label labWindowsAPI
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   115
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   238
   End
   Begin PopupMenu lstAddX
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   268
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin PopupMenu lstAddY
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   340
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin PushButton btnSetPosRelativeWinAPI
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin Label labXY
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "relative to Window (+x,+y):"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin Separator sepInfo
      AutoDeactivate  =   True
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
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   392
      Transparent     =   False
      Visible         =   True
      Width           =   540
   End
   Begin PushButton btnFitOnScreen
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "FitOnScreen"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   477
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin PushButton btnSetPosRelative
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   520
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin Label labWindowPosition
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin TextArea edtMonitors
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   67
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   280
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   138
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   240
   End
   Begin Label labSetPosOnScreen
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "on Screen:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin PopupMenu lstPosScreen
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   166
      ListIndex       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin Label labSetPosOnScreenAtPos
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "at Pos (x,y):"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin TextField edtPosScreenX
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   320
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "100"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   50
   End
   Begin TextField edtPosScreenY
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   382
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "100"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   50
   End
   Begin PushButton btnSetPosOnScreen
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin PushButton btnSetPosOnScreenWinAPI
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   550
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin Label labPosRelativeOnMonitor
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin Label labPosAbsoluteXY
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   88
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "at Xojo Window.Left/Top:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   168
   End
   Begin PushButton btnSetPosAbsoluteWinAPI
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin PushButton btnSetPosAbsolute
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Pos"
      Default         =   False
      Enabled         =   True
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
      Scope           =   2
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   580
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   61
   End
   Begin TextField edtPosAbsoluteX
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   268
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   580
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   60
   End
   Begin TextField edtPosAbsoluteY
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   340
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "0"
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   580
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   60
   End
   Begin Separator sepTop
      AutoDeactivate  =   True
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
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   100
      Transparent     =   True
      Visible         =   True
      Width           =   540
   End
   Begin Label labPosRelativeOnScreen
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   361
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   240
   End
   Begin Canvas cnvAppIcon
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
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
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   64
   End
   Begin Label labAppName
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   "#constWebsiteUrl"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AppName"
      TextAlign       =   1
      TextColor       =   &c0072D800
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   160
   End
   Begin Label labThanks
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   2
      TextColor       =   &c66666600
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   209
   End
   Begin Label labAppVersion
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "AppVersion"
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   160
   End
   Begin Label labContact
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
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
      TextAlign       =   1
      TextColor       =   &c0072CE00
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   55
      Transparent     =   True
      Underline       =   True
      Visible         =   True
      Width           =   70
   End
   Begin Canvas cnvPayPal
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
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
      Top             =   55
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   106
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Self.Title = "Monitors"
		End Sub
	#tag EndEvent


	#tag Constant, Name = constAppName, Type = String, Dynamic = False, Default = \"Monitors", Scope = Private
	#tag EndConstant

	#tag Constant, Name = constWebsiteUrl, Type = String, Dynamic = False, Default = \"https://www.jo-tools.ch/xojo/monitors/", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnXojoCenterLeftTop
	#tag Event
		Sub Action()
		  Dim oWnd As New Window2
		  oWnd.Left = Self.Left + ((Self.Width - oWnd.Width)/2)
		  oWnd.Top = Self.Top + ((Self.Height - oWnd.Height)/2)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnXojoCenterBounds
	#tag Event
		Sub Action()
		  Dim oWnd As New Window2
		  
		  Dim wndParentBounds As REALbasic.Rect = Self.Bounds
		  Dim wndBounds As REALbasic.Rect = oWnd.Bounds
		  Dim setBounds As New REALbasic.Rect(wndBounds.Left, wndBounds.Top, wndBounds.Width, wndBounds.Height)
		  setBounds.Left = wndParentBounds.Left + ((wndParentBounds.Width - setBounds.Width)/2)
		  setBounds.Top = wndParentBounds.Top + ((wndParentBounds.Height - setBounds.Height)/2)
		  oWnd.Bounds = setBounds
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtScreens
	#tag Event
		Sub Open()
		  Dim sScreens() As String
		  For i As Integer = 0 To ScreenCount-1
		    sScreens.Append("Screen(" + Str(i) + ") => " + _
		    "Left: " + Str(Screen(i).Left) + _
		    ", Top: " + Str(Screen(i).Top) + _
		    ", Width: " + Str(Screen(i).Width) + _
		    ", Height: " + Str(Screen(i).Height) + _
		    EndOfLine)
		  Next
		  
		  Me.Text = Join(sScreens, EndOfLine)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events timRefresh
	#tag Event
		Sub Action()
		  Dim iIsOnScreen As Integer = Self.IsOnScreen
		  labIsOnScreen.Text = "IsOnScreen: " + Str(iIsOnScreen) + EndOfLine + _
		  "Left: " + Str(Screen(iIsOnScreen).Left) + ", Top: " + Str(Screen(iIsOnScreen).Top) + EndOfLine + _
		  "Dimension: " + Str(Screen(iIsOnScreen).Width) + "x" + Str(Screen(iIsOnScreen).Height) + EndOfLine + _
		  "ScaleFactor: " + Format(Self.ScaleFactor, "#0.0#")
		  
		  labWindowPosition.Text = "Window.Bounds: " + _
		  "Left: " + Str(Self.Bounds.Left) + ", Top: " + Str(Self.Bounds.Top) + EndOfLine + _
		  Str(Self.Bounds.Width) + "x" + Str(Self.Bounds.Height) + EndOfLine + _
		  "Window.Pos: " + _
		  "Left: " + Str(Self.Left) + ", Top: " + Str(Self.Top) + EndOfLine + _
		  Str(Self.Width) + "x" + Str(Self.Height)
		  
		  #If TargetWindows Then
		    Dim hMon As Integer = Self.IsOnMonitorHandle
		    Dim oRect As REALbasic.Rect = GetMonitorRect(hMon, False)
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
		  iPosX = Self.Left - Screen(iScreen).Left
		  iPosY = Self.Top - Screen(iScreen).Top
		  labPosRelativeOnScreen.Text = "at relative Screen Pos: " + Str(iPosX) + "x, " + Str(iPosY) + "y"
		  
		  Self.IsAtRelativeMonitorPosition(iPosX, iPosY) 'that's using Windows API if possible
		  labPosRelativeOnMonitor.Text = "at relative Monitor Pos: " + Str(iPosX) + "x, " + Str(iPosY) + "y"
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFitOnMonitor
	#tag Event
		Sub Action()
		  Self.FitOnMonitor
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCenterModal
	#tag Event
		Sub Action()
		  Dim oWnd As New Window2
		  oWnd.SetPosition_CenterToParent(Self)
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAddX
	#tag Event
		Sub Open()
		  Me.DeleteAllRows
		  For i As Integer = -500 To 500 Step 50
		    Me.AddRow Str(i)
		  Next
		  Me.ListIndex = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lstAddY
	#tag Event
		Sub Open()
		  Me.DeleteAllRows
		  For i As Integer = -500 To 500 Step 50
		    Me.AddRow Str(i)
		  Next
		  Me.ListIndex = 12
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosRelativeWinAPI
	#tag Event
		Sub Action()
		  Dim oWnd As New Window2
		  
		  Dim setPositionRect As New REALbasic.Rect
		  
		  setPositionRect.Left = Self.Left + Val(lstAddX.Text)
		  setPositionRect.Top = Self.Top + Val(lstAddY.Text)
		  setPositionRect.Width = oWnd.Width
		  setPositionRect.Height = oWnd.Height
		  
		  oWnd.SetPosition_UsingRect(setPositionRect, Self)
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnFitOnScreen
	#tag Event
		Sub Action()
		  Self.FitOnScreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosRelative
	#tag Event
		Sub Action()
		  Dim oWnd As New Window2
		  
		  oWnd.Left = Self.Left + Val(lstAddX.Text)
		  oWnd.Top = Self.Top + Val(lstAddY.Text)
		  
		  'This is buggy, too - so let's just see what happens when setting the position
		  'oWnd.FitOnScreen()
		  
		  oWnd.ShowModal
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events edtMonitors
	#tag Event
		Sub Open()
		  #If TargetWindows Then
		    Dim sMonitors() As String
		    For i As Integer = 0 To MonitorCount-1
		      Dim hMon As Integer = MonitorHandle(i)
		      Dim oRect As REALbasic.Rect = GetMonitorRect(hMon, False)
		      
		      If System.IsFunctionAvailable("GetDpiForMonitor", "Shcore") Then
		        Soft Declare Function GetDpiForMonitor Lib "Shcore" (hMonitor As Integer, dpiType As Integer, ByRef dpiX As UInt32, ByRef dpiY As UInt32) As Integer
		        Const MDT_Effective_DPI = 0
		        Dim Rawxdpi, Effxdpi, Effydpi As UInt32
		        Call GetDpiForMonitor(hMon, MDT_Effective_DPI, Effxdpi, Effydpi)
		        Dim dRatio As Double =  Effxdpi/96
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
		Sub Open()
		  Me.DeleteAllRows
		  For i As Integer = 0 To ScreenCount-1
		    Me.AddRow(Str(i))
		  Next
		  
		  Me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSetPosOnScreen
	#tag Event
		Sub Action()
		  Dim iScreen As Integer = Val(lstPosScreen.Text)
		  
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
		Sub Action()
		  Dim iMonitor As Integer = Val(lstPosScreen.Text)
		  
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
		Sub Action()
		  Dim oWnd As New Window2
		  
		  Dim setPositionRect As New REALbasic.Rect
		  
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
		Sub Action()
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
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma unused areas
		  
		  g.DrawPicture(AppIcon_64, 0, 0)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    ShowURL(constWebsiteUrl)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
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
		Sub Open()
		  Me.Text = constAppName
		  Me.TextSize = 18
		  Me.Bold = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    ShowURL(constWebsiteUrl)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
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
		Sub Open()
		  If (App.ShortVersion <> "") Then
		    Me.Text = App.ShortVersion
		    Return
		  End If
		  
		  Me.Text = Str(App.MajorVersion) + "." + Str(App.MinorVersion) + "." + Str(App.BugVersion)
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
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    ShowURL("mailto:xojo@jo-tools.ch")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPayPal
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma unused areas
		  
		  g.ForeColor = &cFFFFFF
		  #If (XojoVersion >= 2018.03) Then
		    If IsDarkMode Then g.ForeColor = &cD0D0D0
		  #EndIf
		  g.FillRect(0, 0, g.Width, g.Height)
		  g.ForeColor = &c909090
		  g.DrawRect(0, 0, g.Width, g.Height)
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
		Sub MouseUp(X As Integer, Y As Integer)
		  If (x >= 0) And (x < Me.Width) And (y > 0) And (y < Me.Height) Then
		    ShowURL("https://paypal.me/jotools")
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma unused X
		  #Pragma unused Y
		  
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="540"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="350"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
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
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
