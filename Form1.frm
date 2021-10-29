VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "LED coordinates"
   ClientHeight    =   5520
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   16065
   LinkTopic       =   "Form1"
   ScaleHeight     =   5520
   ScaleWidth      =   16065
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton LoadIMG 
      Caption         =   "Load or reload a sample image !"
      Height          =   1095
      Left            =   5400
      TabIndex        =   5
      Top             =   4200
      Width           =   4815
   End
   Begin VB.PictureBox Center_patt2 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      Height          =   3615
      Left            =   5400
      ScaleHeight     =   237
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   317
      TabIndex        =   4
      Top             =   240
      Width           =   4815
   End
   Begin VB.Frame Frame1 
      Caption         =   "Info"
      Height          =   1215
      Left            =   360
      TabIndex        =   2
      Top             =   4080
      Width           =   4815
      Begin VB.Label Label1 
         Caption         =   $"Form1.frx":0000
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   4455
      End
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5055
      Left            =   10440
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   240
      Width           =   5415
   End
   Begin VB.PictureBox Center_patt 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   3615
      Left            =   360
      Picture         =   "Form1.frx":00B6
      ScaleHeight     =   239
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   319
      TabIndex        =   0
      Top             =   240
      Width           =   4815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Author: Dr. Paul A. Gagniuc


Dim LED_N As Integer

Private Sub Center_patt_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    LED_N = LED_N + 1
    
    Text1.Text = Text1.Text & "LED(" & LED_N & ") = " & Chr(34) & X & "," & Y & Chr(34) & vbCrLf
    
    Center_patt.Circle (X, Y), 6, vbRed
    
    Center_patt2.Circle (X, Y), 5, Center_patt.Point(X, Y)

End Sub

Private Sub LoadIMG_Click()
    Center_patt.Picture = LoadPicture(App.Path & "\sample.jpg")
End Sub
