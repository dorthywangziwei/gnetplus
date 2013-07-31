VERSION 5.00
Object = "{DA71FD02-BE12-4678-B06E-78BBCE11E4A1}#1.0#0"; "MF5Ax.ocx"
Begin VB.Form frmMain 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Mifare Demo"
   ClientHeight    =   6135
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8820
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6135
   ScaleWidth      =   8820
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cbxCommSetting 
      Height          =   315
      ItemData        =   "frmMain.frx":08CA
      Left            =   7440
      List            =   "frmMain.frx":08CC
      Style           =   2  'Dropdown List
      TabIndex        =   38
      Top             =   4440
      Width           =   1335
   End
   Begin VB.ComboBox cbxPortNo 
      Height          =   315
      Left            =   7440
      Style           =   2  'Dropdown List
      TabIndex        =   37
      Top             =   4080
      Width           =   1335
   End
   Begin MF5AXLib.MF5Ax MF5x1 
      Left            =   6000
      Top             =   5640
      _Version        =   65536
      _ExtentX        =   847
      _ExtentY        =   847
      _StockProps     =   0
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Value"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   5
      Left            =   525
      TabIndex        =   11
      Top             =   3585
      Width           =   1575
   End
   Begin VB.CommandButton cmdValueEx 
      Caption         =   "ValueEx"
      Enabled         =   0   'False
      Height          =   315
      Left            =   525
      TabIndex        =   35
      Top             =   3285
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   255
      Left            =   6720
      TabIndex        =   32
      Top             =   3600
      Visible         =   0   'False
      Width           =   1875
      Begin VB.OptionButton optEventMode 
         BackColor       =   &H00FFFFFF&
         Caption         =   "AscII"
         Height          =   255
         Index           =   0
         Left            =   -15
         TabIndex        =   34
         Top             =   0
         Width           =   855
      End
      Begin VB.OptionButton optEventMode 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Hex"
         Height          =   255
         Index           =   1
         Left            =   900
         TabIndex        =   33
         Top             =   0
         Width           =   855
      End
   End
   Begin VB.TextBox Text1 
      Height          =   975
      Left            =   6600
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   30
      Top             =   2610
      Width           =   2160
   End
   Begin VB.TextBox txtASCBlock 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   1365
      MaxLength       =   32
      TabIndex        =   15
      Top             =   4875
      Width           =   3525
   End
   Begin VB.CommandButton cmdAutoScan 
      Caption         =   "Scan "
      Height          =   375
      Left            =   6810
      TabIndex        =   0
      Top             =   4965
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Request"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   2325
      TabIndex        =   3
      Top             =   540
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Save Key"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   9
      Left            =   4125
      TabIndex        =   2
      ToolTipText     =   "Save Key into Reader EEPROM"
      Top             =   540
      Width           =   1590
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   6810
      TabIndex        =   1
      Top             =   5385
      Width           =   1590
   End
   Begin VB.OptionButton optKEY 
      BackColor       =   &H00FFFFFF&
      Caption         =   "KeyB"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   5115
      TabIndex        =   8
      Top             =   2370
      Width           =   765
   End
   Begin VB.OptionButton optKEY 
      BackColor       =   &H00FFFFFF&
      Caption         =   "KeyA"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   4365
      TabIndex        =   7
      Top             =   2370
      Value           =   -1  'True
      Width           =   765
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Condition"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   8
      Left            =   4155
      TabIndex        =   17
      ToolTipText     =   "Setup Access Condition"
      Top             =   5490
      Width           =   1590
   End
   Begin VB.TextBox txtBlock 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   1365
      MaxLength       =   32
      TabIndex        =   14
      Top             =   4350
      Width           =   3525
   End
   Begin VB.ComboBox cmbBlock 
      Appearance      =   0  'Flat
      Enabled         =   0   'False
      Height          =   300
      ItemData        =   "frmMain.frx":08CE
      Left            =   2385
      List            =   "frmMain.frx":08DE
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   2970
      Width           =   1485
   End
   Begin VB.ComboBox cmbSector 
      Appearance      =   0  'Flat
      Enabled         =   0   'False
      Height          =   300
      ItemData        =   "frmMain.frx":0906
      Left            =   4350
      List            =   "frmMain.frx":093A
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1755
      Width           =   1560
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Halt"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   7
      Left            =   2325
      TabIndex        =   16
      Top             =   5490
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Write"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   6
      Left            =   4125
      TabIndex        =   13
      Top             =   3540
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Read"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   4
      Left            =   2325
      TabIndex        =   12
      Top             =   3540
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Authenticate"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   2325
      TabIndex        =   9
      Top             =   2310
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Select"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   2325
      TabIndex        =   5
      Top             =   1710
      Width           =   1590
   End
   Begin VB.CommandButton cmdMF5 
      Caption         =   "Card ID"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   2325
      TabIndex        =   4
      Top             =   1125
      Width           =   1590
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Baudrate:"
      Height          =   255
      Index           =   1
      Left            =   6600
      TabIndex        =   40
      Top             =   4440
      Width           =   735
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "COM Port :"
      Height          =   255
      Index           =   0
      Left            =   6600
      TabIndex        =   39
      Top             =   4080
      Width           =   855
   End
   Begin VB.Label labMF5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   8
      Left            =   0
      TabIndex        =   36
      Top             =   1800
      Width           =   2265
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00808080&
      Caption         =   "Event"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   6600
      TabIndex        =   31
      Top             =   2355
      Width           =   2145
   End
   Begin VB.Label labVersion 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Firmware Version"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   210
      Left            =   150
      TabIndex        =   29
      Top             =   5880
      Visible         =   0   'False
      Width           =   1680
   End
   Begin VB.Label labCaps 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Text"
      Height          =   180
      Index           =   1
      Left            =   405
      TabIndex        =   28
      Top             =   4890
      Width           =   705
   End
   Begin VB.Label labCaps 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Hex"
      Height          =   180
      Index           =   0
      Left            =   405
      TabIndex        =   27
      Top             =   4365
      Width           =   705
   End
   Begin VB.Label labProcedure 
      BackStyle       =   0  'Transparent
      Caption         =   "The below mapped flowchart illustrates the initialisation and anticollision procedure"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   240
      TabIndex        =   23
      Top             =   120
      Width           =   7035
   End
   Begin VB.Label labMF5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   0
      Left            =   60
      TabIndex        =   26
      Top             =   870
      Width           =   2265
   End
   Begin VB.Label labMF5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   1
      Left            =   60
      TabIndex        =   25
      Top             =   1470
      Width           =   2265
   End
   Begin VB.Label labMF5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   7
      Left            =   3930
      TabIndex        =   24
      Top             =   1470
      Width           =   2265
   End
   Begin VB.Label labMF5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   6
      Left            =   3240
      TabIndex        =   22
      Top             =   3945
      Width           =   1515
   End
   Begin VB.Label labMF5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   5
      Left            =   1440
      TabIndex        =   21
      Top             =   3945
      Width           =   1515
   End
   Begin VB.Label labMF5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   4
      Left            =   5055
      TabIndex        =   20
      Top             =   3945
      Width           =   1515
   End
   Begin VB.Label labMF5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   3
      Left            =   60
      TabIndex        =   19
      Top             =   2670
      Width           =   2265
   End
   Begin VB.Label labMF5 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   2
      Left            =   60
      TabIndex        =   18
      Top             =   2070
      Width           =   2265
   End
   Begin VB.Image Image1 
      Height          =   6045
      Left            =   15
      Picture         =   "frmMain.frx":09E4
      Top             =   30
      Width           =   6540
   End
   Begin VB.Image Image2 
      Height          =   2235
      Left            =   6555
      Picture         =   "frmMain.frx":3042
      Stretch         =   -1  'True
      Top             =   15
      Width           =   2235
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public m_sCardId As String

Private m_szROMType As String, m_szVersion As String
Private m_szModuleName As String
Private m_bDisableAutoMode As Boolean
Private m_bNoChangeEvent As Boolean
Private WithEvents m_ofrmValue As frmValueEx
Attribute m_ofrmValue.VB_VarHelpID = -1
Private m_bIsSupportTransfer As Boolean
Private m_lSaveKeyMaxCount As Long
Private m_szCaption As String
Private m_bIsExecutingCommand As Boolean
Private m_sSettings As String
Private m_szLastCommPort As String '= "COM1"
Private m_szLastPortSettings As String '= "19200"
Private m_lCurrCommPortNo As Long
Private m_bIsRequesting As Boolean 'check new request

Public Function SaveKeyMaxCount() As Long
    SaveKeyMaxCount = m_lSaveKeyMaxCount
End Function

Public Sub AddRecord(Action As Byte, ByVal lValue1 As Long, ByVal lValue2 As Long)
    Dim tRecord As MF_RECORD
    Dim bResult As Boolean
    
    Select Case m_szROMType
    Case "PGM0487", "PGM-T0487"                 ' PCR310/PRW106/MFR350
        With tRecord
            .Id = Val("&H" & Right$(m_sCardId, 8) & "&")
            .dt = Now
            .Action = Action
            .Value1 = lValue1
            .Value2 = lValue2
        End With
        bResult = MF5x1.mfAddRecord(VarPtr(tRecord), LenB(tRecord))
    End Select
End Sub

Sub EnableAccess(bFlag As Boolean)
    Select Case MF5x1.mfCurrentClassEx
    Case MF_ULTRALIGHT_CL2
        cmdMF5(4).Enabled = True   ' read
        cmdMF5(6).Enabled = True   ' write
        cmdMF5(5).Enabled = False  ' value
        cmdMF5(8).Enabled = False  ' condition
        cmdMF5(3).Enabled = False  ' Authenticate
        optKEY(0).Enabled = False
        optKEY(1).Enabled = False
        cmbSector.Enabled = False
        cmbBlock.Enabled = True
        txtBlock.MaxLength = 8     ' 4 bytes pre 1 page
        txtBlock.Enabled = bFlag
        txtASCBlock.MaxLength = txtBlock.MaxLength / 2
        txtASCBlock.Enabled = bFlag
        CheckWritable
    Case MF_DESFIRE_CL2
        cmdMF5(4).Enabled = False ' read
        cmdMF5(6).Enabled = False ' write
        cmdMF5(5).Enabled = False ' value
        cmdMF5(8).Enabled = False ' condition
        cmdMF5(3).Enabled = False ' Authenticate
        optKEY(0).Enabled = False
        optKEY(1).Enabled = False
        cmbSector.Enabled = False
        cmbBlock.Enabled = False
    Case Else
        cmdMF5(4).Enabled = bFlag   ' read
        cmdMF5(6).Enabled = bFlag   ' write
        cmdMF5(5).Enabled = bFlag   ' value
        cmdMF5(8).Enabled = bFlag   ' condition
        txtBlock.MaxLength = 32     ' 16 bytes pre 1 block
        txtBlock.Enabled = bFlag
        txtASCBlock.MaxLength = txtBlock.MaxLength / 2
        txtASCBlock.Enabled = bFlag
        cmbBlock.Enabled = bFlag
        CheckWritable
    End Select
End Sub


Public Sub OnMfError()
    Dim I As Integer
    ' any erroy, all operator must restart
    optKEY(0).Enabled = False
    optKEY(1).Enabled = False
    For I = 1 To cmdMF5.Count - 1
        If I <> 7 And I <> 9 Then
            cmdMF5(I).Enabled = False
        End If
    Next I
    cmdValueEx.Enabled = False
    cmbSector.Enabled = False
    cmbBlock.Enabled = False
    txtBlock.Enabled = False
End Sub

Sub ResetStatus()
    Dim lab As Label
    
    For Each lab In labMF5
        lab.Caption = ""
    Next lab
End Sub

Sub SetMaxBlock(MaxBlock As Long)
    Dim I As Integer, lOldIndex As Long
    
    lOldIndex = cmbBlock.ListIndex
    cmbBlock.Clear
    For I = 0 To MaxBlock - 1
        If MF5x1.mfCurrentClassEx <> MF_ULTRALIGHT_CL2 Then
            cmbBlock.AddItem "Block " + CStr(I)
        Else
            cmbBlock.AddItem "Page " & CStr(I)
        End If
    Next I
    
    If lOldIndex < cmbBlock.ListCount And lOldIndex <> -1 Then
        cmbBlock.ListIndex = lOldIndex
    Else
        cmbBlock.ListIndex = 0
    End If
End Sub

Sub SetMaxSector(MaxSector As Long)
    Dim I As Integer, lOldIndex As Long
    
    lOldIndex = cmbSector.ListIndex
    cmbSector.Clear
    If MaxSector > 0 And MF5x1.mfCurrentClassEx <> MF_ULTRALIGHT_CL2 Then
        cmbSector.Enabled = True
        For I = 0 To MaxSector - 1
            cmbSector.AddItem "Sector " & Str(I)    ' 1K & 4K
        Next I
        If lOldIndex < cmbSector.ListCount And lOldIndex <> -1 Then
            cmbSector.ListIndex = lOldIndex
        Else
            cmbSector.ListIndex = 0
        End If
    Else
        cmbSector.Enabled = False
    End If
End Sub

Public Sub CheckWritable()
    Dim bDisabledWrite As Boolean
    If MF5x1.mfCurrentClassEx = MF_ULTRALIGHT_CL2 Then
    ElseIf cmbBlock.ListIndex = 0 And cmbSector.ListIndex = 0 Then '若選擇sector #0, block #0, 則設定為不可寫入資料
        bDisabledWrite = True
    ElseIf cmbBlock.ListIndex = (cmbBlock.ListCount - 1) Then '若選擇最後一個block(block #3), 則設定為不可寫入資料
        bDisabledWrite = True
    End If
    If bDisabledWrite Then
        'Can't Write or Set Value to Last Block
        cmdValueEx.Enabled = False ' ValueEx
        cmdMF5(5).Enabled = False 'Value
        cmdMF5(6).Enabled = False 'Write
    Else
        Select Case MF5x1.mfCurrentClassEx
        Case MF_ULTRALIGHT_CL2, MF_DESFIRE_CL2
            cmdValueEx.Enabled = False
            cmdMF5(5).Enabled = False    'Value
        Case Else
            cmdValueEx.Enabled = cmbBlock.Enabled And m_bIsSupportTransfer
            cmdMF5(5).Enabled = cmbBlock.Enabled    'Value
        End Select
        cmdMF5(6).Enabled = cmbBlock.Enabled        'Write
    End If
End Sub

Private Sub cmbBlock_Click()
    CheckWritable
End Sub

Private Sub cmbSector_Click()
    EnableAccess False
    
    If cmbSector.ListIndex < 31 Then
        SetMaxBlock 4     ' MIFARE 1K
    Else
        SetMaxBlock 16    ' MIFARE 4K after sector 32
    End If
    
End Sub

Private Function MoveArrayItemToHead(ByRef szSrcArray() As String, ByVal szItem As String) As Boolean
    Dim bResult As Boolean
    Dim I As Integer
    Dim J As Integer
    
    For I = 0 To UBound(szSrcArray)
        If szSrcArray(I) = szItem Then
            For J = I To 1 Step -1
                szSrcArray(J) = szSrcArray(J - 1)
            Next J
            szSrcArray(J) = szItem
            bResult = True
        End If
    Next I
    
    MoveArrayItemToHead = bResult
End Function

Private Sub cmdAutoScan_Click()
    Dim I As Integer
    Dim lEvent As Long
    Dim bIsFound As Boolean
    Dim sPortSettingBuffer() As String
    Dim sCommPortBuffer() As String
    Dim bResult As Boolean
    Dim lCommPortCount As Long
    Dim lCommNo As Long
    Dim lPortSettingsIndex As Long
    Dim lMaxCommPortCount As Long
    Dim lMaxPortSettingCount As Long
    
    cmdAutoScan.Enabled = False
    
    m_bDisableAutoMode = False
    
    lCommPortCount = cbxPortNo.ListCount - 1
    If cbxPortNo.Text <> "Auto" Then
        ReDim sCommPortBuffer(0) As String
        sCommPortBuffer(0) = cbxPortNo.Text
        lMaxCommPortCount = UBound(sCommPortBuffer)
    Else
        'auto mode
        ReDim sCommPortBuffer(lCommPortCount - 1) As String
        For I = 1 To (lCommPortCount)
            sCommPortBuffer(I - 1) = cbxPortNo.List(I)
        Next I
        lMaxCommPortCount = UBound(sCommPortBuffer) + 1
    End If
    
    If cbxCommSetting.Text <> "Auto" Then
        ReDim sPortSettingBuffer(0) As String
        sPortSettingBuffer(0) = cbxCommSetting.Text & ",N,8,1"
        lMaxPortSettingCount = UBound(sPortSettingBuffer)
    Else
        'auto mode
        ReDim sPortSettingBuffer(cbxCommSetting.ListCount - 2) As String
        For I = 1 To (cbxCommSetting.ListCount - 1)
            sPortSettingBuffer(I - 1) = cbxCommSetting.List(I) & ",N,8,1"
        Next I
        lMaxPortSettingCount = UBound(sPortSettingBuffer)
    End If
        
    
    '
    ' polling RWD(AC906) machine by Broadcast(Addr=0) for One By One
    '
    ' Clear all status label
    ResetStatus
    Call OnMfError
    
    'Disable Command Box
    cmdMF5(0).Enabled = False
    txtBlock.Text = vbNullString
    labVersion.Visible = False
    
    If MF5x1.PortOpen Then
        MF5x1.PortOpen = False
        Sleep 100
    End If
    
    m_lSaveKeyMaxCount = 0
    ' show version
    Me.Caption = m_szCaption
    
    For lCommNo = 0 To lMaxCommPortCount
        With MF5x1
            If .PortOpen Then
                .PortOpen = False
                Sleep 150
            End If
            .CommPort = CLng(Mid$(sCommPortBuffer(lCommNo), 4))
            lPortSettingsIndex = 0
            
            For lPortSettingsIndex = 0 To lMaxPortSettingCount
                If .PortOpen Then
                    .PortOpen = False
                    Sleep 150
                End If
                .Settings = sPortSettingBuffer(lPortSettingsIndex)
                .PortOpen = True
                If .PortOpen Then
                    lEvent = .Polling(0)       ' Addr=0 (Broadcast)
                    If (lEvent <> -1) Then
                        Dim lLetterPosition As Long
                        MF5x1.mfAutoMode
                        bResult = IdentifyDevice()
                        m_szLastCommPort = sCommPortBuffer(lCommNo)
                        lLetterPosition = InStr(1, sPortSettingBuffer(lPortSettingsIndex), ",", 1)
                        m_szLastPortSettings = Mid(sPortSettingBuffer(lPortSettingsIndex), 1, lLetterPosition - 1)
                        Exit For
                    Else
                        bResult = False
                    End If
                Else
                    bResult = False
                End If
            Next lPortSettingsIndex
            
        End With
        If bResult = True Or (cbxPortNo.Text = "Auto" And lCommNo = lMaxCommPortCount - 1) Then
            Exit For
        End If
    Next lCommNo
    
    If bResult Then
        Call SaveSettings
        bIsFound = True
    Else
        bIsFound = False
    End If
    
    If bIsFound Then
        If m_bDisableAutoMode Then
            'Disable Auto Mode
            MF5x1.mfAutoMode False
        End If
        
        cmdMF5(0).Enabled = True
        If m_szLastPortSettings = "19200" Then
            labVersion.Caption = "Reader Version: " & m_szVersion
            Me.Caption = m_szCaption & " - Mifare Reader On COM" & MF5x1.CommPort
        Else
            labVersion.Caption = "Reader(" & sPortSettingBuffer(0) & "bps) Version: " & m_szVersion
            Me.Caption = m_szCaption & " - Mifare Reader On COM" & MF5x1.CommPort
        End If
        labVersion.Visible = True
        cmdMF5(7).Enabled = True
        cmdMF5(9).Enabled = CBool(m_lSaveKeyMaxCount > 0)
    Else
        MsgBox "No RWD on serial prot!!", vbOKOnly Or vbExclamation
    End If
    cmdAutoScan.Enabled = True
End Sub

Private Function IdentifyDevice() As Boolean
    Dim bResult As Boolean
    Dim dblVersion As Double
    
    m_szVersion = MF5x1.GetVersion
    m_szROMType = Left$(m_szVersion, InStr(1, m_szVersion & " ", " ", vbTextCompare) - 1)
    dblVersion = Val(Mid$(m_szVersion, InStr(1, m_szVersion, "V", vbTextCompare) + 1))
    dblVersion = dblVersion + Val(Mid$(m_szVersion, InStr(1, m_szVersion, "R", vbTextCompare) + 1)) / 100000#
    
     m_lSaveKeyMaxCount = 16
     bResult = True

    Select Case m_szROMType
    Case "PGM0488", "PGM-T0488"                 ' AC906
        m_szModuleName = "AC906"
        
    Case "PGM0487", "PGM-T0487"                 ' PCR310/PRW106/MFR350
        m_szModuleName = "PCR310/PRW106/MFR350"
        If dblVersion >= 1.4 Then
            m_bIsSupportTransfer = True
        End If
        
    Case "PGM1383", "PGM-T1383"                 ' PCR310的SN輸出反向
        m_szModuleName = "PCR310-ACU"
        m_bIsSupportTransfer = True
        
    Case "PGM0494", "PGM-T0494"                 ' RWD906
        m_szModuleName = "RWD906-00"
        
    Case "PGM0517", "PGM-T0517"                 ' RWD906-UT
        m_szModuleName = "RWD906-UT"

    Case "PGM0499", "PGM-T0499"                 ' MF5
        m_szModuleName = "MF5"
        If dblVersion >= 1.3 Then
            m_bIsSupportTransfer = True
        End If
        
    Case "PGM-T0748"
        m_szModuleName = "DF5"                  ' DF5
        m_bIsSupportTransfer = True
        '***
    Case "PGM-T0985"    ' MF6
        m_szModuleName = "MF6"
        m_bIsSupportTransfer = True

    Case "PGM-T0811"                            ' MF10 with baudrate 57600
        m_szModuleName = "MF10"

    Case "ROM-T0636"                            ' MF5 with baudrate 9600
        m_szModuleName = "MF5-01 (ODM)"

    Case "PGM-T0668"
        m_szModuleName = "MF5-02 (ODM)"

    Case "PGM-T0593"                            ' PCR216
        m_szModuleName = "PCR216"

    Case "PGM-T0583"                            ' MF700-00
        m_szModuleName = "MF700-00"
        m_bDisableAutoMode = True

    Case "PGM-T0604", "PGM-T0724", "PGM-T1023", "PGM-T1000" ' MF700-10
        m_szModuleName = "MF700-10"
        m_bDisableAutoMode = True

    Case "PGM-T0633"                            ' MF700-30
        m_szModuleName = "MF700-30"
        m_bDisableAutoMode = True

    Case "PGM-T0605"                            ' RWD145-00
        m_szModuleName = "RWD145-00"

    Case "PGM-T0829"                            ' MF700-AB
        m_szModuleName = "MF700-AB"
        If dblVersion >= 1.000002 Then
            m_bIsSupportTransfer = True
        End If

    Case "PGM-T0830"                            ' MF12-00
        m_szModuleName = "MF12-00"

    Case "PGM-T1039"                            ' MF12-01
        m_szModuleName = "MF12-01"

    Case "PGM-T0843"                            ' MF700-DK
        m_szModuleName = "MF700-DK"

    Case "PGM-T0987"                            ' MF700-STF
        m_szModuleName = "MF700-STF"
        m_bIsSupportTransfer = True
        m_bDisableAutoMode = True

    Case "PGM-T0995"                            ' RF30
        m_szModuleName = "RF30"
        m_bIsSupportTransfer = True

    Case "PGM-T0985"                            ' MF6
        m_szModuleName = "MF6"
        m_bIsSupportTransfer = True

    Case "PGM-T0999"                            ' DF700
        m_szModuleName = "DF700"
        m_bIsSupportTransfer = True

    Case "PGM-T1030", "PGM-T1031"               ' DF750
        m_szModuleName = "DF750"
        m_bIsSupportTransfer = True

    Case "PGM-T1074"                            ' MF5-AU56
        m_szModuleName = "MF5-AU56"
        m_bIsSupportTransfer = True

    Case "PGM-T1242" ' PCR320-19K (DF750-PT)
        m_szModuleName = "DF750-PT"
        m_bIsSupportTransfer = True
        m_bDisableAutoMode = True
'        If dblVersion >= getDVerfromSVer("V1.1R3") Then
'            m_bAllowSaveKey = True
'        End If
        bResult = True
                
    Case "PGM-T1100"                            ' PCR320
        m_szModuleName = "PCR320"
        m_bIsSupportTransfer = True
        If dblVersion >= 1.2 Then
            m_lSaveKeyMaxCount = 40
        End If

    Case "PGM-T1186"                            ' DF20
        m_szModuleName = "DF20"
        m_bIsSupportTransfer = True
        m_lSaveKeyMaxCount = 0
        If dblVersion >= 1.2 Then
            m_lSaveKeyMaxCount = 40
        End If
        
    Case "PGM-T1142"                            ' MF700-36
        m_szModuleName = "MF700-36"
        m_bDisableAutoMode = True
        
    Case "PGM-T1235"                            ' MF20
        m_szModuleName = "MF20"
        m_bIsSupportTransfer = True
        If dblVersion >= 1.1 Then
            m_lSaveKeyMaxCount = 40
        End If
        
    Case "PGM-T1433"                            ' MF320-DEC/MF20-DEC
        m_szModuleName = "MF320-DEC/MF20-DEC"
        m_bIsSupportTransfer = True
        m_lSaveKeyMaxCount = 40

    Case "PGM-T1472"                            ' MF20-PD1
        m_szModuleName = "MF20-PD1"
        m_bIsSupportTransfer = True

        m_lSaveKeyMaxCount = 40

    Case "PGM-T1494"                            ' MF5-MSB
        m_szModuleName = "MF5-MSB"
        m_bIsSupportTransfer = True
        
    Case "PGM-T1495"                            ' MF5-LSB
        m_szModuleName = "MF5-LSB"
        m_bIsSupportTransfer = True
            
    Case "PGM-T1493"                            ' DF20-01
        m_szModuleName = "DF20-01"
        m_bIsSupportTransfer = True
        
        m_lSaveKeyMaxCount = 40
            
    Case Else
        bResult = False
    End Select

    IdentifyDevice = bResult
    
End Function

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Function ToHexFixLen(ByVal lValue As Long, ByVal lLen As Long) As String
    Dim szResult As String
    Dim lResultLen As Long
    szResult = Hex$(lValue)
    lResultLen = Len(szResult)
    If lResultLen > lLen Then
        szResult = Right$(szResult, lLen)
    ElseIf lResultLen < lLen Then
        szResult = String$(lLen - lResultLen, "0") & szResult
    End If
    ToHexFixLen = szResult
End Function

Public Sub cmdMF5_Click(Index As Integer)
    Dim bIsExecutingCommand As Boolean
    On Error GoTo Err_Proc
    bIsExecutingCommand = m_bIsExecutingCommand
    If m_bIsExecutingCommand = False Then
        Select Case Index
        Case 5, 8, 9 ' Value, Condition, Save Key
        Case Else
            m_bIsExecutingCommand = True
        End Select
        ExecutingCommand Index
    End If
Err_Exit:
    m_bIsExecutingCommand = bIsExecutingCommand
    Exit Sub

Err_Proc:
    Debug.Print "cmdMF5_Click(" & Index & ") - " & Err.Description & "(" & Err.Number & ")"
    Resume Err_Exit
End Sub

Private Sub ExecutingCommand(ByVal Index As Integer)
    Dim nResult As Integer
    Dim bResult As Boolean
    Dim sResult As String
    Dim BlkNum As Integer
    Dim szKey As String
    Dim bIsCancelEnter As Boolean
    Dim bIsUseSaveKey As Boolean
    
    'On Error Resume Next
    
    BlkNum = cmbBlock.ListIndex
    
    Select Case Index
        Case 0              ' Request ---------------------------
            ResetStatus     ' Clear all status label
            Call OnMfError
            
            nResult = MF5x1.mfRequest             ' Answer & Request, return card class
            If nResult > 0 Then
                labMF5(0).ForeColor = QBColor(2)
                labMF5(0).Caption = "ATQA: 0x" & ToHexFixLen(nResult, 4)
                cmdMF5(1).Enabled = True
            Else
                labMF5(0).ForeColor = QBColor(12)
                labMF5(0).Caption = MF5x1.GNetErrorCodeStr
            End If
            m_bIsRequesting = True
            
        Case 1              ' Anticollision-----------------------
            If m_bIsRequesting Then
                m_sCardId = MF5x1.mfAnticollisionHex
                labMF5(1).ForeColor = QBColor(2)
                labMF5(1).Caption = m_sCardId
                cmdMF5(2).Enabled = True
                m_bIsRequesting = False
            End If
            
        Case 2              ' Select Card-------------------------
            nResult = MF5x1.mfSelectCardHex(m_sCardId)
            
            If nResult > 0 Then
                labMF5(2).ForeColor = QBColor(2)
                labMF5(2).Caption = "SAK: 0x" & ToHexFixLen(nResult, 2)
                cmdMF5(3).Enabled = True
                cmbSector.Enabled = True
                optKEY(0).Enabled = True
                optKEY(1).Enabled = True
                
                If MF5x1.mfIsNextAnticollision Then
                    labMF5(1).Caption = Left$(MF5x1.mfAnticollision2Hex, 8) & Left$(m_sCardId, 6)
                End If
                
                ' Check Card Type
                Select Case MF5x1.mfCurrentClassEx
                    Case MF_ULTRALIGHT_CL2
                        SetMaxBlock 16          ' 16 page
                        SetMaxSector 0
                        EnableAccess True
                        
                    Case MF_1K_CL1, MF_1K_CL1_UID7, MF_PRO_1K_CL1, MF_PRO_1K_CL2_UID7
                        SetMaxSector 16
                        
                    Case MF_4K_CL1, MF_4K_CL1_UID7, MF_PRO_4K_CL1, MF_4K_CL1_UID7
                        SetMaxSector 40
                        
                    Case Else
                        cmdMF5(3).Enabled = False       ' Authenticate
                        SetMaxSector 0
                End Select
            Else
                If MF5x1.mfCurrentClassEx = MF_ULTRALIGHT_CL2 Then
                    labMF5(2).ForeColor = QBColor(2)
                    labMF5(2).Caption = "SAK: 0x" & ToHexFixLen(nResult, 2)
                    SetMaxBlock 16          ' 16 page
                    SetMaxSector 0
                    EnableAccess True
                Else
                    labMF5(2).ForeColor = QBColor(12)
                    labMF5(2).Caption = MF5x1.GNetErrorCodeStr
                    Call OnMfError
                End If
            End If

            labMF5(8).Caption = MF5x1.mfCurrentClassStr
            
            
        Case 3  ' Authenticate, using EEPROM key
'            bResult = False
'            bResult = AuthenticateWithKey(vbNullString)
'            If (AuthenticateWithKey(vbNullString) = True) Then bResult = True
'            If bResult = False Then
'                If (AuthenticateWithKey("FFFFFFFFFFFF") = True) Then bResult = True
'            End If
'
'            If bResult = False And (m_lSaveKeyMaxCount > 0) Then
'                szKey = frmEnterKey.GetKey
'                If szKey = vbNullString Then
'                    'No Enter any Key
'                    bIsCancelEnter = True
'                Else
'                    bResult = AuthenticateWithKey(szKey)
'                End If
'            End If
            
            
            bIsUseSaveKey = False
            If cmbSector.ListIndex < m_lSaveKeyMaxCount Then
                bIsUseSaveKey = True
            End If
            If bIsUseSaveKey Then
                szKey = vbNullString 'Authenticate Key by Save Key
            Else
                szKey = "FFFFFFFFFFFF" ' Authenticate with New Card Key
            End If
            If optKEY(0).Value Then
                bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_A, szKey)
            Else
                bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_B, szKey)
            End If
            If bResult = False Then
                If bIsUseSaveKey = False Then
                    szKey = frmEnterKey.GetKey
                    If szKey = vbNullString Then
                        'No Enter any Key
                        bIsCancelEnter = True
                    Else
                        If optKEY(0).Value Then
                            bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_A, szKey)
                        Else
                            bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_B, szKey)
                        End If
                    End If
                End If
            End If
            
            
            If bIsCancelEnter = False Then
                If bResult = True Then
                    labMF5(3).ForeColor = QBColor(2)
                    labMF5(3).Caption = "Pass"
                    EnableAccess True   ' To enable read/write/value etc. button
                Else
                    labMF5(3).ForeColor = QBColor(12)
                    labMF5(3).Caption = MF5x1.GNetErrorCodeStr
                    EnableAccess False  ' To disable read/write/value etc. button
                    Call OnMfError
                End If
            End If
        
        Case 4  ' Read Block Data, using Hex String
            bResult = False
            If MF5x1.mfReadHex(BlkNum, sResult) Then
                bResult = True
                If MF5x1.mfCurrentClassEx = MF_ULTRALIGHT_CL2 Then
                    txtBlock.Text = Mid$(sResult, 1, 8)
                Else
                    txtBlock.Text = sResult
                End If
            End If
            
            If Len(txtBlock.Text) > 0 And bResult Then
                labMF5(6).ForeColor = QBColor(2)
                labMF5(6).Caption = "Ok"
            Else
                labMF5(6).ForeColor = QBColor(12)
                labMF5(6).Caption = MF5x1.GNetErrorCodeStr
                Call OnMfError
            End If
                    
        Case 6  ' Write Block Data, using Hex String
            If MF5x1.mfWriteHex(BlkNum, txtBlock.Text) Then
                labMF5(4).ForeColor = QBColor(2)
                labMF5(4).Caption = "Ok"
            Else
                labMF5(4).ForeColor = QBColor(12)
                labMF5(4).Caption = MF5x1.GNetErrorCodeStr
                Call OnMfError
            End If
            
        Case 7              ' Halt ----------------------------
            MF5x1.mfHalt
            EnableAccess False
            ResetStatus
            
            If m_bDisableAutoMode Then
                'Disable Auto Mode
                MF5x1.mfAutoMode False
            End If
        Case 5
            frmValue.Show vbModal
        Case 8
            frmAccess.Show vbModal
        Case 9
            frmSaveKey.Show vbModal
    End Select
End Sub
Private Function AuthenticateWithKey(ByVal in_sKey As String) As Boolean
    Dim bResult As Boolean
    
    If optKEY(0).Value Then
        bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_A, in_sKey)
    Else
        bResult = MF5x1.mfAuthenticate(cmbSector.ListIndex, KEY_B, in_sKey)
    End If
    
    AuthenticateWithKey = bResult
End Function

Private Sub cmdMF5_LostFocus(Index As Integer)
    If Index <> 0 Then
        If cmdMF5(Index).Enabled = False And Me.Enabled Then
            cmdMF5(0).SetFocus
        End If
    End If
End Sub

Private Sub cmdValueEx_Click()
    Set m_ofrmValue = frmValueEx
    frmValueEx.ShowValueOpt MF5x1, cmbBlock, cmbSector.ListIndex
    Set m_ofrmValue = Nothing
    Unload frmValueEx
End Sub

Private Sub cmdValueEx_LostFocus()
    If cmdValueEx.Enabled = False And Me.Enabled Then
        cmdMF5(0).SetFocus
    End If
End Sub

Private Sub RefreshCommPort()
    Dim I As Integer
    Dim sPortSettingBuffer() As String
    Dim sCommPortBuffer() As String
    Dim bResult As Boolean
    Dim lCommPortCount As Long
    Dim szPreSelItem As String
    
    'Display Settings
    With MF5x1
        lCommPortCount = .NumOfPorts
        ReDim sCommPortBuffer(0 To (lCommPortCount - 1))
        For I = 0 To (lCommPortCount - 1)
            sCommPortBuffer(I) = .EnumCommPort(I)
        Next I
    End With
    bResult = MoveArrayItemToHead(sCommPortBuffer, m_szLastCommPort)
    
    Call BufferToCombobox(cbxPortNo, sCommPortBuffer)
        
End Sub

Private Sub RefreshPortSettings()
    Dim sPortSettingBuffer() As String
    Dim bResult As Boolean
    
    sPortSettingBuffer = Split("19200;115200;38400;9600;57600", ";")
    bResult = MoveArrayItemToHead(sPortSettingBuffer, m_szLastPortSettings)
    Call BufferToCombobox(cbxCommSetting, sPortSettingBuffer)

End Sub

Private Sub BufferToCombobox(ByRef oCombobox As ComboBox, ByRef sBuffer() As String)
    Dim szPreSelItem As String
    Dim lCommPortIdx As Long
    Dim lCommSettingIdx As Long
    Dim I As Long
    
    With oCombobox
        szPreSelItem = .Text
        .Clear
        .AddItem ("Auto")
        For I = 0 To UBound(sBuffer)
            .AddItem (sBuffer(I))
            
            If sBuffer(I) = "COM" & CStr(m_lCurrCommPortNo) Then
                lCommPortIdx = I + 1
                If .ListCount > 0 Then
                    .ListIndex = lCommPortIdx
                End If
            ElseIf sBuffer(I) = m_szLastCommPort Then
                .ListIndex = 1
            End If
            
            If sBuffer(I) = m_szLastPortSettings Then
                lCommSettingIdx = I + 1
                If .ListCount > 0 Then
                    .ListIndex = lCommSettingIdx
                End If
            End If
        Next
    End With

End Sub

Private Sub Form_Load()
    Dim p As Integer, strPort As String
    Dim lPortIdx As Long
    
    ' select last time comm port
    On Error Resume Next
    Call LoadSettings
    
    ' show version
    m_szCaption = Me.Caption & " V" & App.Major & "." & App.Minor & "R" & App.Revision
    Me.Caption = m_szCaption
           
    cmbSector.ListIndex = 0
    cmbBlock.ListIndex = 0
    
    ' last time window position
    Me.Top = GetSetting(App.Title, "MainWin", "top", Me.Top)
    Me.Left = GetSetting(App.Title, "MainWin", "left", Me.Left)

    m_bNoChangeEvent = False

    m_lCurrCommPortNo = CLng(Mid$(m_szLastCommPort, 4))
   
    Call RefreshCommPort
    Call RefreshPortSettings

    If cbxPortNo.Text = "" Then
        cbxPortNo.ListIndex = 0
    End If
    If cbxCommSetting.Text = "" Then
        cbxCommSetting.ListIndex = 0
    End If

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim f As Form
    
    Call SaveSettings
    
    SaveSetting App.Title, "MainWin", "top", Me.Top
    SaveSetting App.Title, "MainWin", "left", Me.Left
    
    For Each f In Forms
        Unload f
    Next
    
    End
End Sub

Private Sub LoadSettings()
    MF5x1.CommPort = GetSetting(App.Title, "COMM", "PORT", 1)
    MF5x1.Settings = GetSetting(App.Title, "SET", "settings", "19200,N,8,1")
    m_szLastCommPort = GetSetting(App.Title, "COMM", "LastCommPort", "COM1")
    m_szLastPortSettings = GetSetting(App.Title, "SET", "LastPortSettings", "19200")
End Sub

Private Sub SaveSettings()
    SaveSetting App.Title, "COMM", "PORT", MF5x1.CommPort
    SaveSetting App.Title, "SET", "settings", MF5x1.Settings
    
    SaveSetting App.Title, "COMM", "LastCommPort", m_szLastCommPort
    SaveSetting App.Title, "SET", "LastPortSettings", m_szLastPortSettings
End Sub

Private Sub MF5x1_OnKeyPress()
    ShowMsg "Hot-Key Press"
End Sub

Private Sub MF5x1_OnCardEvent(ByVal iEvent As MF5AXLib.CardEventConstants)
    Select Case iEvent
    Case CardEventConstants.MF_CARD_PRESENT
        ShowMsg "Card Present"
    Case CardEventConstants.MF_CARD_REMOVE
        ShowMsg "Card Remove"
        ResetStatus     ' Clear all status label
        Call OnMfError
    End Select
End Sub

Private Sub MF5x1_OnIRQ()
    ShowMsg "On IRQ"
End Sub

Private Sub MF5x1_OnComm()
    Dim bBuffers() As Byte
    Dim I As Integer
    Dim bIsEventMode As Boolean
    If MF5x1.CommEvent = comEvReceive Then
        bBuffers = MF5x1.Input
        If optEventMode(0).Value Then
            bIsEventMode = True
        End If
        For I = 0 To UBound(bBuffers)
            If bIsEventMode Then
                If bBuffers(I) < 32 Then
                    ShowMsg "<" & Right$(Hex$(&H100 + bBuffers(I)), 2) & ">", False
                Else
                    ShowMsg Chr$(bBuffers(I)), False
                End If
            Else
                ShowMsg Right$(Hex$(&H100 + bBuffers(I)), 2) & " ", False
            End If
        Next I
    End If
End Sub

Private Sub MF5x1_OnPort(ByVal Action As MF5AXLib.CommPortEventConstants, ByVal CommPort As Integer)
    If Action = comEvPlugin Then
        ShowMsg "COM" & CommPort & " is plug-in"
'        If MF5x1.PortOpen = False Then
        m_lCurrCommPortNo = CommPort
        Call RefreshCommPort
'        End If
    ElseIf Action = comEvRemove Then
        Call RefreshCommPort
        ShowMsg "COM" & CommPort & " is remove"
    ElseIf Action = comEvRemoveClosed Then
        Me.Caption = m_szCaption
        ResetStatus     ' Clear all status label
        Call OnMfError
        cmdMF5(7).Enabled = False
        cmdMF5(9).Enabled = False
        ShowMsg "COM" & CommPort & " is remove & closed"
    End If
    
    
End Sub

Private Sub Text1_DblClick()
    Text1.Text = vbNullString
End Sub

Private Sub txtASCBlock_Change()
    If m_bNoChangeEvent = False Then
        m_bNoChangeEvent = True
        
'        With txtBlock
'            If MF5x1.mfCurrentClassEx <> MF_1K_CL1_UID7 Then
'                .MaxLength = 32
'            Else
'                .MaxLength = 8
'            End If
'            .Text = Left$(modMF5.StringToHex(txtASCBlock.Text) & String$(.MaxLength, "0"), .MaxLength)
'        End With
'
        m_bNoChangeEvent = False
    End If
End Sub

Private Sub txtASCBlock_KeyPress(KeyAscii As Integer)
    Dim lLen As Long
    With txtASCBlock
        lLen = modMF5.LenX(.Text)
        Select Case KeyAscii
        Case 0 To 31    'ASCII Control Char
        Case 32 To 255  'ASCII
            lLen = lLen + 1
        Case Else       'DBCS
            lLen = lLen + 2
        End Select
        If (lLen - .SelLength) > .MaxLength Then
            KeyAscii = 0
        End If
    End With
End Sub

Private Sub txtBlock_Change()
    If m_bNoChangeEvent = False Then
        m_bNoChangeEvent = True
        txtASCBlock.Text = modMF5.HexToString$(txtBlock.Text)
        m_bNoChangeEvent = False
    End If
End Sub

Private Sub txtBlock_KeyPress(KeyAscii As Integer)
    Select Case KeyAscii
    Case Is < 32
    Case &H30 To &H39, &H41 To &H46 '0~9,A~F
    Case &H61 To &H66               'a~f
        KeyAscii = KeyAscii - 32
    Case Else
        KeyAscii = 0
    End Select
End Sub

Public Sub ShowMsg(ByVal szData As String, Optional ByVal bNewLine As Boolean = True)
    Dim L As Long, szTemp As String
    With Text1
        szTemp = .Text
        .SelStart = Len(szTemp)
        If bNewLine And Right$(szTemp, 2) <> vbCrLf And Len(szTemp) > 0 Then
            .SelText = vbCrLf
        End If
        .SelText = szData
        If bNewLine Then
            .SelText = vbCrLf
        End If
        szTemp = .Text
        If Len(szTemp) > 5210 Then
            L = InStr(2048, szTemp, vbCrLf, vbTextCompare)
            If L <= 0 Then L = 2048
            szTemp = Mid$(szTemp, L)
            .Text = szTemp
            .SelStart = Len(szTemp)
        End If
    End With
End Sub

Private Sub m_ofrmValue_OnValueEvent(iEvent As iValueBlockOptConstants)
    Select Case iEvent
    Case iValueBlockOptConstants.OnBlockSuccess
        labMF5(5).ForeColor = QBColor(2)
        labMF5(5).Caption = "Ok"
    Case iValueBlockOptConstants.OnBlockError
        labMF5(5).ForeColor = QBColor(12)
        labMF5(5).Caption = "Fail"
        Call frmMain.OnMfError
    Case iValueBlockOptConstants.OnBlockChanged
        cmdMF5_Click 4
    End Select
End Sub

