VERSION 5.00
Begin VB.Form Protection 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   8970
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   11970
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Protection.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Protection.frx":0CCA
   ScaleHeight     =   8970
   ScaleWidth      =   11970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   4560
      Picture         =   "Protection.frx":6C4C
      ScaleHeight     =   585
      ScaleWidth      =   2385
      TabIndex        =   4
      Top             =   7440
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   4118
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   8280
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Unlock Computer"
      Enabled         =   0   'False
      Height          =   255
      Left            =   9840
      TabIndex        =   0
      Top             =   8640
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   " PC Protection v3.0 by: Kevin Tucker.   Copyright 2000-2001 Frozen Storm Productions"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   0
      TabIndex        =   5
      Top             =   8760
      Width           =   6615
   End
   Begin VB.Label Label2 
      Caption         =   $"Protection.frx":CBCE
      Height          =   975
      Left            =   4680
      TabIndex        =   3
      Top             =   0
      Width           =   7335
   End
   Begin VB.Image Image3 
      Height          =   330
      Left            =   11640
      Picture         =   "Protection.frx":CCD9
      Top             =   900
      Width           =   7020
   End
   Begin VB.Image Image2 
      Height          =   330
      Left            =   4680
      Picture         =   "Protection.frx":F736
      Top             =   900
      Width           =   7020
   End
   Begin VB.Image Image1 
      Height          =   1230
      Left            =   0
      Picture         =   "Protection.frx":12193
      Top             =   0
      Width           =   4680
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Password to Unlock Computer:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   4118
      TabIndex        =   2
      Top             =   8040
      Width           =   3735
   End
End
Attribute VB_Name = "Protection"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "Access Approved!", vbInformation + vbOKOnly, " PC Lockdown v3.0"
CtrlAltDel_Enable
End
End Sub

Private Sub Form_Load()
CtrlAltDel_Disable
End Sub

Private Sub Text1_Change()
If Text1.Text = "unlock" Then
Command1.Enabled = True
Else
Command1.Enabled = False
End If
End Sub
