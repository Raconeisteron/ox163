VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form sys 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "OX163��������"
   ClientHeight    =   14565
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   22080
   Icon            =   "sys.frx":0000
   LinkTopic       =   "sys"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   14565
   ScaleWidth      =   22080
   Begin VB.CommandButton frame_rec 
      Caption         =   "����INI�ָ���������"
      Height          =   495
      Left            =   4800
      TabIndex        =   98
      Top             =   4800
      Width           =   2055
   End
   Begin VB.CommandButton frame_def 
      Caption         =   "�ָ�����Ĭ������"
      Height          =   495
      Left            =   6960
      TabIndex        =   99
      Top             =   4800
      Width           =   1815
   End
   Begin VB.Frame FrameL 
      Caption         =   "�����������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   7
      Left            =   2400
      TabIndex        =   30
      Top             =   10200
      Visible         =   0   'False
      Width           =   6375
      Begin VB.PictureBox Picture23 
         BorderStyle     =   0  'None
         Height          =   615
         Left            =   480
         ScaleHeight     =   615
         ScaleWidth      =   5595
         TabIndex        =   92
         Top             =   600
         Width           =   5595
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(����������õ���������)"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   94
            Top             =   240
            Width           =   3135
         End
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(ʹ�ò������ϲ�������������)"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   93
            Top             =   0
            Width           =   3615
         End
      End
      Begin VB.TextBox Text1 
         Height          =   1695
         Left            =   960
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   48
         Text            =   "sys.frx":406A
         Top             =   2760
         Width           =   5175
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   2
         Left            =   960
         TabIndex        =   34
         Text            =   "asd"
         Top             =   2160
         Width           =   2655
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   1
         Left            =   960
         TabIndex        =   33
         Text            =   "1530930"
         Top             =   1800
         Width           =   2655
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   0
         Left            =   960
         TabIndex        =   32
         Text            =   "wehi"
         Top             =   1440
         Width           =   2655
      End
      Begin VB.PictureBox Picture17 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1095
         Left            =   3720
         ScaleHeight     =   1095
         ScaleWidth      =   2535
         TabIndex        =   38
         Top             =   1440
         Width           =   2535
         Begin VB.CommandButton Auto_Password_com 
            Caption         =   "�Զ���д"
            Height          =   975
            Left            =   0
            TabIndex        =   39
            Top             =   0
            Width           =   2415
         End
      End
      Begin VB.Label FrameL7_1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ�����163���������������:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   4
         Left            =   240
         TabIndex        =   95
         Top             =   360
         Width           =   2520
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�����������ڲ�����֤��(�°�����ʡ��)"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   3
         Left            =   960
         TabIndex        =   37
         Top             =   2520
         Width           =   3420
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   36
         Top             =   2205
         Width           =   630
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ID:"
         Height          =   180
         Index           =   1
         Left            =   240
         TabIndex        =   35
         Top             =   1845
         Width           =   630
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�û���:"
         Height          =   180
         Index           =   0
         Left            =   240
         TabIndex        =   31
         Top             =   1485
         Width           =   630
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   8
      Left            =   9000
      TabIndex        =   140
      Top             =   9000
      Width           =   6375
      Begin VB.PictureBox Picture29 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   360
         ScaleHeight     =   375
         ScaleWidth      =   1500
         TabIndex        =   174
         Top             =   2400
         Width           =   1500
         Begin VB.CommandButton Comm_edit_black 
            Caption         =   "�༭������"
            Height          =   300
            Left            =   0
            TabIndex        =   175
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.PictureBox Picture28 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   3120
         ScaleHeight     =   375
         ScaleWidth      =   1500
         TabIndex        =   172
         Top             =   2400
         Width           =   1500
         Begin VB.CommandButton Comm_edit_white 
            Caption         =   "�༭������"
            Height          =   300
            Left            =   0
            TabIndex        =   173
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.PictureBox Picture27 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   169
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton ie_black_list 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   171
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_black_list 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   170
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture26 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   166
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton ie_white_list 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   168
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_white_list 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   167
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture25 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   161
         Top             =   1320
         Width           =   1395
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   163
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_local_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   162
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture22 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   144
         Top             =   600
         Width           =   1395
         Begin VB.OptionButton ox163_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   146
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ox163_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   145
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture10 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   141
         Top             =   1320
         Width           =   1395
         Begin VB.OptionButton ie_window 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   143
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton ie_window 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   142
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ú�������"
         Height          =   180
         Index           =   19
         Left            =   360
         TabIndex        =   165
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1800
         Width           =   1080
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ð�������"
         Height          =   180
         Index           =   18
         Left            =   3120
         TabIndex        =   164
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1800
         Width           =   1080
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ֹ��ǰ��վ�¿����ڣ�"
         Height          =   180
         Index           =   17
         Left            =   3120
         TabIndex        =   160
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1080
         Width           =   2160
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���OX163���´��ڣ�"
         Height          =   180
         Index           =   14
         Left            =   360
         TabIndex        =   148
         ToolTipText     =   "����ض���վ�뽨��ѡ��(��)"
         Top             =   360
         Width           =   2070
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���ֹ����������¿����ڣ�"
         Height          =   180
         Index           =   0
         Left            =   360
         TabIndex        =   147
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1080
         Width           =   2520
      End
   End
   Begin VB.CommandButton sys_apply 
      Caption         =   "Ӧ��"
      Height          =   465
      Left            =   7680
      TabIndex        =   110
      Top             =   5520
      Width           =   1215
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   240
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   21
      ImageHeight     =   21
      MaskColor       =   16711935
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":415F
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":41CF
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":424B
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":42CD
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":434A
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":43C1
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":443E
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":44BE
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":453C
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":45B4
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4624
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":46A0
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4722
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":479F
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4816
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4893
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4913
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "sys.frx":4991
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.TreeView SysTreeView 
      Height          =   5295
      Left            =   120
      TabIndex        =   109
      Top             =   120
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   9340
      _Version        =   393217
      HideSelection   =   0   'False
      Indentation     =   706
      LabelEdit       =   1
      Style           =   7
      Scroll          =   0   'False
      ImageList       =   "ImageList1"
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame FrameL 
      Caption         =   "OX163ϵͳ�����"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   9
      Left            =   15480
      TabIndex        =   91
      Top             =   9000
      Visible         =   0   'False
      Width           =   6375
      Begin VB.TextBox OX_Start_log_Text 
         Height          =   4095
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   188
         Text            =   "sys.frx":4A09
         Top             =   360
         Width           =   5895
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ȼ��뾯���"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   6
      Left            =   15480
      TabIndex        =   69
      Top             =   4680
      Visible         =   0   'False
      Width           =   6375
      Begin VB.PictureBox Picture5 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   149
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   151
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   150
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture7 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   84
         Top             =   2040
         Width           =   2475
         Begin VB.OptionButton saveOp 
            Caption         =   "ѯ��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   86
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton saveOp 
            Caption         =   "ֱ�ӱ���"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   85
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.PictureBox Picture8 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   81
         Top             =   2760
         Width           =   1395
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   83
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   82
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture9 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   78
         Top             =   2760
         Width           =   1395
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   80
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   79
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture14 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   73
         Top             =   1200
         Width           =   2475
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Alt+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   75
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   74
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.PictureBox Picture13 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   70
         Top             =   480
         Width           =   2475
         Begin VB.OptionButton list_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   72
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton list_copy 
            Caption         =   "Alt+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   71
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ִ��ʱ�����˳�ѯ�ʣ�"
         Height          =   180
         Left            =   3600
         TabIndex        =   152
         ToolTipText     =   "����ѡ��(��)��ֹ�����"
         Top             =   1800
         Width           =   2340
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ŀ¼����ʱ�����浽downloadĿ¼��"
         Height          =   180
         Left            =   240
         TabIndex        =   89
         ToolTipText     =   "����ѡ��(��)��ֹ���Ᵽ��"
         Top             =   1800
         Width           =   2880
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�������ʱ��ѯ���Ƿ��������룿"
         Height          =   180
         Left            =   240
         TabIndex        =   88
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2520
         Width           =   2700
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "������ɺ��Ƿ������ʾ��"
         Height          =   180
         Left            =   3600
         TabIndex        =   87
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2520
         Width           =   2520
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����UBB��ǩ:[url], ��������"
         Height          =   180
         Index           =   9
         Left            =   240
         TabIndex        =   77
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   960
         Width           =   2430
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��������(url && Lst)��������"
         Height          =   180
         Index           =   8
         Left            =   240
         TabIndex        =   76
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   240
         Width           =   2430
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   4
      Left            =   2400
      TabIndex        =   49
      Top             =   6000
      Visible         =   0   'False
      Width           =   6375
      Begin VB.CheckBox web_proxy_box 
         Caption         =   "��������������ô���A (��ԭIE����ģʽ������������)"
         ForeColor       =   &H00C00000&
         Height          =   375
         Left            =   120
         TabIndex        =   187
         Top             =   2880
         Value           =   1  'Checked
         Width           =   5535
      End
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   1
         ItemData        =   "sys.frx":4AE3
         Left            =   120
         List            =   "sys.frx":4AF0
         Style           =   2  'Dropdown List
         TabIndex        =   68
         Top             =   1440
         Width           =   3135
      End
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   0
         ItemData        =   "sys.frx":4B2F
         Left            =   120
         List            =   "sys.frx":4B3C
         Style           =   2  'Dropdown List
         TabIndex        =   67
         Top             =   480
         Width           =   3135
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   61
         Top             =   1800
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   60
         Top             =   1440
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   57
         Top             =   840
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   56
         Top             =   480
         Width           =   2055
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   53
         Top             =   840
         Width           =   3135
      End
      Begin VB.PictureBox proxy_pic 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   3000
         ScaleHeight     =   375
         ScaleWidth      =   3135
         TabIndex        =   51
         Top             =   3600
         Width           =   3135
         Begin VB.CommandButton proxy_com3 
            Caption         =   "����B��A"
            Height          =   375
            Left            =   2040
            TabIndex        =   66
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com2 
            Caption         =   "����A��B"
            Height          =   375
            Left            =   840
            TabIndex        =   65
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com1 
            Caption         =   "���"
            Height          =   375
            Left            =   0
            TabIndex        =   64
            Top             =   0
            Width           =   735
         End
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   50
         Top             =   1800
         Width           =   3135
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   7
         Left            =   3360
         TabIndex        =   63
         Top             =   1860
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   6
         Left            =   3360
         TabIndex        =   62
         Top             =   1485
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   4
         Left            =   3360
         TabIndex        =   59
         Top             =   900
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   3
         Left            =   3360
         TabIndex        =   58
         Top             =   525
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   $"sys.frx":4B7B
         ForeColor       =   &H000000FF&
         Height          =   540
         Index           =   2
         Left            =   120
         TabIndex        =   55
         Top             =   2160
         Width           =   4590
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��������B������ͼƬ����"
         Height          =   180
         Index           =   1
         Left            =   120
         TabIndex        =   54
         Top             =   1200
         Width           =   2070
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��������A������ҳ������"
         Height          =   180
         Index           =   0
         Left            =   120
         TabIndex        =   52
         Top             =   240
         Width           =   2070
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "������������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   1
      Left            =   2520
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   6375
      Begin VB.ComboBox Combo_lst 
         Height          =   300
         ItemData        =   "sys.frx":4C14
         Left            =   240
         List            =   "sys.frx":4C21
         Style           =   2  'Dropdown List
         TabIndex        =   111
         Top             =   2760
         Width           =   2415
      End
      Begin VB.VScrollBar VS_timeout 
         Height          =   280
         Left            =   1800
         Max             =   10
         Min             =   255
         TabIndex        =   25
         Top             =   1485
         Value           =   10
         Width           =   375
      End
      Begin VB.VScrollBar VS_retry 
         Height          =   280
         Left            =   1800
         Max             =   0
         Min             =   255
         TabIndex        =   24
         Top             =   1860
         Width           =   375
      End
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   240
         ScaleHeight     =   735
         ScaleWidth      =   5715
         TabIndex        =   1
         ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
         Top             =   600
         Width           =   5715
         Begin VB.HScrollBar downHS 
            Height          =   225
            Left            =   3000
            Max             =   1000
            Min             =   1
            TabIndex        =   9
            Top             =   390
            Value           =   4
            Width           =   2055
         End
         Begin VB.TextBox downText 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H8000000F&
            BorderStyle     =   0  'None
            Enabled         =   0   'False
            Height          =   225
            Left            =   2160
            TabIndex        =   8
            Text            =   "2KB"
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   420
            Width           =   735
         End
         Begin VB.OptionButton downOp 
            Caption         =   "�Զ���"
            Height          =   255
            Index           =   5
            Left            =   1320
            TabIndex        =   7
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   360
            Width           =   975
         End
         Begin VB.OptionButton downOp 
            Caption         =   "100 KB"
            Height          =   255
            Index           =   4
            Left            =   0
            TabIndex        =   6
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   360
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "50 KB"
            Height          =   255
            Index           =   3
            Left            =   3960
            TabIndex        =   5
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "20 KB"
            Height          =   255
            Index           =   2
            Left            =   2640
            TabIndex        =   4
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "10 KB"
            Height          =   255
            Index           =   1
            Left            =   1320
            TabIndex        =   3
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1335
         End
         Begin VB.OptionButton downOp 
            Caption         =   "1 KB"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   2
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1215
         End
      End
      Begin VB.PictureBox Picture24 
         BorderStyle     =   0  'None
         Height          =   495
         Left            =   240
         ScaleHeight     =   495
         ScaleWidth      =   2535
         TabIndex        =   137
         Top             =   3120
         Width           =   2535
         Begin VB.CommandButton LST_Help 
            Caption         =   "�����б��ļ�ʹ��˵��"
            Height          =   465
            Left            =   0
            TabIndex        =   138
            Top             =   0
            Width           =   2295
         End
      End
      Begin VB.Label Combo_lst1 
         AutoSize        =   -1  'True
         Caption         =   $"sys.frx":4C61
         ForeColor       =   &H000000FF&
         Height          =   360
         Left            =   2760
         TabIndex        =   139
         Top             =   2760
         Width           =   2610
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ�������б��ʽ��"
         Height          =   180
         Index           =   7
         Left            =   240
         TabIndex        =   112
         ToolTipText     =   "����ʹ��HTM��ʽ"
         Top             =   2520
         Width           =   1620
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "��������(����)��С��"
         Height          =   180
         Left            =   240
         TabIndex        =   90
         Top             =   360
         Width           =   1800
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��ʱ(10-255��)��"
         Height          =   180
         Index           =   1
         Left            =   240
         TabIndex        =   29
         ToolTipText     =   "Ĭ��Ϊ15��"
         Top             =   1560
         Width           =   1440
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����( 0-255��)��"
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   28
         ToolTipText     =   "Ĭ��Ϊ20��"
         Top             =   1920
         Width           =   1440
      End
      Begin VB.Label LB_timeout 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "30��"
         Height          =   180
         Left            =   2400
         TabIndex        =   27
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1560
         Width           =   360
      End
      Begin VB.Label LB_retry 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��������"
         Height          =   180
         Left            =   2400
         TabIndex        =   26
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1920
         Width           =   720
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�����������"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   5
      Left            =   9000
      TabIndex        =   10
      Top             =   4680
      Visible         =   0   'False
      Width           =   6375
      Begin VB.TextBox update_host_Text 
         Height          =   270
         Left            =   1440
         TabIndex        =   178
         Text            =   "http://www.shanhaijing.net"
         Top             =   920
         Width           =   4335
      End
      Begin VB.ComboBox update_host_Combo 
         Height          =   300
         ItemData        =   "sys.frx":4C9E
         Left            =   1440
         List            =   "sys.frx":4CA0
         TabIndex        =   176
         Text            =   "update_host_Combo"
         ToolTipText     =   "��""http://""��ͷ, Ĭ��""http://www.shanhaijing.net/163/"""
         Top             =   1200
         Width           =   4335
      End
      Begin VB.PictureBox Picture3 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   120
         ScaleHeight     =   255
         ScaleWidth      =   1755
         TabIndex        =   105
         Top             =   2040
         Width           =   1755
         Begin VB.OptionButton set_tray 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   107
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_tray 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   106
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture19 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1755
         TabIndex        =   45
         Top             =   2040
         Width           =   1755
         Begin VB.OptionButton set_checkall 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   47
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_checkall 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   46
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture18 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1755
         TabIndex        =   41
         Top             =   2760
         Width           =   1755
         Begin VB.OptionButton set_sbar 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   43
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_sbar 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   42
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture6 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   120
         ScaleHeight     =   255
         ScaleWidth      =   1635
         TabIndex        =   20
         Top             =   2760
         Width           =   1635
         Begin VB.OptionButton listOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   22
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton listOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   21
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture2 
         BorderStyle     =   0  'None
         Height          =   350
         Left            =   120
         ScaleHeight     =   345
         ScaleWidth      =   2895
         TabIndex        =   15
         Top             =   480
         Width           =   2895
         Begin VB.CommandButton Update_now_Command 
            Caption         =   "����������"
            Height          =   300
            Left            =   1440
            TabIndex        =   23
            ToolTipText     =   "�ֶ�������"
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton autoOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   17
            Top             =   50
            Width           =   495
         End
         Begin VB.OptionButton autoOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   16
            Top             =   50
            Width           =   495
         End
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ø��·���"
         Height          =   180
         Left            =   120
         TabIndex        =   177
         ToolTipText     =   "��""http://""��ͷ, Ĭ��""http://www.shanhaijing.net/163/"""
         Top             =   960
         Width           =   1260
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���С����ϵͳ���̣�"
         Height          =   180
         Index           =   4
         Left            =   120
         TabIndex        =   108
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   1800
         Width           =   1980
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ��Զ�ȫ����Ƕ�ѡ��"
         Height          =   180
         Index           =   12
         Left            =   3600
         TabIndex        =   44
         ToolTipText     =   "�б���Զ�ȫѡ����"
         Top             =   1800
         Width           =   2160
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���ʾ��Ϣ����"
         Height          =   180
         Index           =   11
         Left            =   3600
         TabIndex        =   40
         ToolTipText     =   "��Ϣ��������ʾOX163��������Ϣ"
         Top             =   2520
         Width           =   1440
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ҳ��ʱ����ʾ�б��嵥��"
         Height          =   180
         Left            =   120
         TabIndex        =   18
         ToolTipText     =   "����ѡ��(��)�ӿ�ˢ���ٶ�"
         Top             =   2520
         Width           =   2340
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Զ������£�"
         Height          =   180
         Left            =   120
         TabIndex        =   14
         ToolTipText     =   "����ѡ��(��)�Զ������°汾���"
         Top             =   240
         Width           =   1260
      End
   End
   Begin VB.CommandButton sys_def_com 
      Caption         =   "�ָ�ȫ��Ĭ������"
      Height          =   465
      Index           =   0
      Left            =   2160
      TabIndex        =   19
      Top             =   5520
      Width           =   1815
   End
   Begin VB.CommandButton sys_no 
      Caption         =   "ȡ��(&C)"
      Height          =   465
      Left            =   6360
      TabIndex        =   13
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton sys_rec 
      Caption         =   "����INI�ָ�ȫ������"
      Height          =   465
      Index           =   0
      Left            =   120
      TabIndex        =   12
      Top             =   5520
      Width           =   1935
   End
   Begin VB.CommandButton sys_yes 
      Caption         =   "ȷ��(&A)"
      Height          =   465
      Left            =   4920
      TabIndex        =   11
      Top             =   5520
      Width           =   1335
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ļ�Ŀ¼����"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   2
      Left            =   9000
      TabIndex        =   96
      Top             =   120
      Width           =   6375
      Begin VB.ComboBox Combo_unicode_ctrl 
         Height          =   300
         Index           =   1
         ItemData        =   "sys.frx":4CA2
         Left            =   240
         List            =   "sys.frx":4CAF
         Style           =   2  'Dropdown List
         TabIndex        =   159
         Top             =   1080
         Width           =   5895
      End
      Begin VB.ComboBox Combo_unicode_ctrl 
         Height          =   300
         Index           =   0
         ItemData        =   "sys.frx":4D0E
         Left            =   240
         List            =   "sys.frx":4D1B
         Style           =   2  'Dropdown List
         TabIndex        =   157
         Top             =   480
         Width           =   5895
      End
      Begin VB.Frame Frame2 
         ForeColor       =   &H00C00000&
         Height          =   1575
         Left            =   240
         TabIndex        =   114
         Top             =   2880
         Width           =   5895
         Begin VB.ComboBox Combo_rar 
            Height          =   300
            ItemData        =   "sys.frx":4D87
            Left            =   3720
            List            =   "sys.frx":4D94
            Style           =   2  'Dropdown List
            TabIndex        =   135
            Top             =   240
            Width           =   1815
         End
         Begin VB.ComboBox Combo_rar_name 
            Height          =   300
            ItemData        =   "sys.frx":4DB6
            Left            =   2880
            List            =   "sys.frx":4DB8
            Style           =   2  'Dropdown List
            TabIndex        =   134
            Top             =   900
            Width           =   1335
         End
         Begin VB.TextBox fix_name_Text 
            Height          =   270
            Left            =   2880
            MaxLength       =   15
            TabIndex        =   133
            Top             =   570
            Width           =   2655
         End
         Begin VB.PictureBox Picture15 
            BorderStyle     =   0  'None
            Height          =   495
            Left            =   4200
            ScaleHeight     =   495
            ScaleWidth      =   1500
            TabIndex        =   131
            Top             =   840
            Width           =   1500
            Begin VB.CommandButton Command1 
               Caption         =   "��Ӻ�׺"
               Height          =   300
               Left            =   120
               TabIndex        =   132
               Top             =   60
               Width           =   1215
            End
         End
         Begin VB.PictureBox Picture16 
            BorderStyle     =   0  'None
            Height          =   975
            Left            =   480
            ScaleHeight     =   975
            ScaleWidth      =   2115
            TabIndex        =   126
            Top             =   480
            Width           =   2115
            Begin VB.OptionButton file_compare 
               Caption         =   "���Ƚ� ����ͬ���ļ�"
               Height          =   255
               Index           =   2
               Left            =   0
               TabIndex        =   129
               ToolTipText     =   "skip same name files"
               Top             =   360
               Width           =   2055
            End
            Begin VB.OptionButton file_compare 
               Caption         =   "�Ƚ� ������ͬ���ļ�"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   128
               ToolTipText     =   "skip same files"
               Top             =   0
               Width           =   2055
            End
            Begin VB.OptionButton file_compare 
               Caption         =   "���Ƚ� ���������ļ�"
               Height          =   255
               Index           =   0
               Left            =   0
               TabIndex        =   127
               ToolTipText     =   "rename as new files"
               Top             =   720
               Width           =   2055
            End
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "�ļ�"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   5
            Left            =   120
            TabIndex        =   153
            Top             =   0
            Width           =   360
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "αͼ��飺"
            Height          =   180
            Index           =   3
            Left            =   2880
            TabIndex        =   136
            ToolTipText     =   "����ʹ���Զ�����"
            Top             =   300
            Width           =   900
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�����ļ����Ѵ��ڣ�"
            Height          =   180
            Index           =   10
            Left            =   240
            TabIndex        =   130
            ToolTipText     =   "�밴�û���Ҫ�趨"
            Top             =   240
            Width           =   1620
         End
      End
      Begin VB.Frame Frame1 
         ForeColor       =   &H00C00000&
         Height          =   1335
         Left            =   240
         TabIndex        =   113
         Top             =   1440
         Width           =   5895
         Begin VB.PictureBox Picture20 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   3360
            ScaleHeight     =   255
            ScaleWidth      =   1635
            TabIndex        =   122
            Top             =   910
            Width           =   1635
            Begin VB.OptionButton set_url_folder 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   124
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton set_url_folder 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   123
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.TextBox def_path_txt 
            Enabled         =   0   'False
            Height          =   270
            Left            =   150
            TabIndex        =   120
            Top             =   510
            Width           =   4935
         End
         Begin VB.PictureBox Picture4 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   1440
            ScaleHeight     =   255
            ScaleWidth      =   1515
            TabIndex        =   117
            Top             =   240
            Width           =   1515
            Begin VB.OptionButton def_path 
               Caption         =   "����"
               Height          =   255
               Index           =   1
               Left            =   840
               TabIndex        =   119
               Top             =   0
               Width           =   735
            End
            Begin VB.OptionButton def_path 
               Caption         =   "�ر�"
               Height          =   255
               Index           =   0
               Left            =   0
               TabIndex        =   118
               Top             =   0
               Width           =   735
            End
         End
         Begin VB.PictureBox Picture11 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   5160
            ScaleHeight     =   255
            ScaleWidth      =   555
            TabIndex        =   115
            Top             =   510
            Width           =   555
            Begin VB.CommandButton def_path_com 
               Caption         =   "..."
               Enabled         =   0   'False
               Height          =   255
               Left            =   0
               TabIndex        =   116
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Ŀ¼"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   6
            Left            =   120
            TabIndex        =   154
            Top             =   0
            Width           =   360
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼��"
            Height          =   180
            Index           =   13
            Left            =   120
            TabIndex        =   125
            ToolTipText     =   "���磺C:\163blog.vbs_vbscript_GB2312\http������blog.163.com��aaa��\��"
            Top             =   960
            Width           =   2880
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "����Ĭ��·����"
            Height          =   180
            Index           =   5
            Left            =   120
            TabIndex        =   121
            ToolTipText     =   "�����Զ�������"
            Top             =   270
            Width           =   1260
         End
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����Unicode�ı��ַ���"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   16
         Left            =   240
         TabIndex        =   158
         Top             =   840
         Width           =   1890
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unicode�ļ���\�ļ�����"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   15
         Left            =   240
         TabIndex        =   156
         Top             =   240
         Width           =   1980
      End
   End
   Begin VB.Frame FrameL 
      Caption         =   "�ű�����"
      ForeColor       =   &H00C00000&
      Height          =   5295
      Index           =   3
      Left            =   15480
      TabIndex        =   97
      Top             =   120
      Width           =   6375
      Begin VB.Frame Frame3 
         Height          =   3615
         Left            =   240
         TabIndex        =   179
         Top             =   960
         Width           =   5895
         Begin VB.FileListBox scriptFile 
            Height          =   2970
            Hidden          =   -1  'True
            Left            =   3600
            Pattern         =   "*.txt"
            TabIndex        =   185
            Top             =   480
            Width           =   2175
         End
         Begin VB.CommandButton IncLstCtrl_Com1 
            Height          =   255
            Index           =   1
            Left            =   3120
            Picture         =   "sys.frx":4DBA
            Style           =   1  'Graphical
            TabIndex        =   184
            ToolTipText     =   "Remove Include File"
            Top             =   840
            Width           =   375
         End
         Begin VB.CommandButton IncLstCtrl_Com1 
            Height          =   255
            Index           =   0
            Left            =   3120
            Picture         =   "sys.frx":4E16
            Style           =   1  'Graphical
            TabIndex        =   183
            ToolTipText     =   "Add Incule File"
            Top             =   480
            Width           =   375
         End
         Begin MSComctlLib.ListView scriptList 
            DragIcon        =   "sys.frx":4E72
            Height          =   2820
            Left            =   120
            TabIndex        =   186
            ToolTipText     =   "��ק����˳��"
            Top             =   480
            Width           =   2895
            _ExtentX        =   5106
            _ExtentY        =   4974
            View            =   3
            Arrange         =   1
            LabelEdit       =   1
            MultiSelect     =   -1  'True
            LabelWrap       =   -1  'True
            HideSelection   =   0   'False
            Checkboxes      =   -1  'True
            FullRowSelect   =   -1  'True
            GridLines       =   -1  'True
            _Version        =   393217
            ForeColor       =   -2147483640
            BackColor       =   -2147483643
            Appearance      =   1
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "����"
               Size            =   9
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            NumItems        =   1
            BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               Key             =   "include_name"
               Object.Tag             =   "name_include"
               Text            =   "include�б�"
               Object.Width           =   3881
            EndProperty
         End
         Begin VB.Label custom_sLabel2 
            AutoSize        =   -1  'True
            Caption         =   "Include Flie(���ȼ��ɸ�����)"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   9
            Left            =   120
            TabIndex        =   182
            Top             =   240
            Width           =   2520
         End
         Begin VB.Label custom_sLabel 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "custom�ļ���(�����)"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   8
            Left            =   3600
            MouseIcon       =   "sys.frx":8EDC
            MousePointer    =   99  'Custom
            TabIndex        =   181
            Top             =   240
            Width           =   1980
         End
         Begin VB.Label custom_sLabel1 
            AutoSize        =   -1  'True
            Caption         =   "include�б�"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   7
            Left            =   120
            TabIndex        =   180
            Top             =   0
            Width           =   990
         End
      End
      Begin VB.PictureBox Picture12 
         BorderStyle     =   0  'None
         Height          =   315
         Left            =   240
         ScaleHeight     =   315
         ScaleWidth      =   2655
         TabIndex        =   100
         Top             =   600
         Width           =   2655
         Begin VB.OptionButton scriptOP 
            Caption         =   "�Ӻ�"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   103
            ToolTipText     =   "�ڳ���������Ƿ�Ϊ163����ִ��"
            Top             =   20
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "����"
            Height          =   255
            Index           =   1
            Left            =   915
            TabIndex        =   102
            ToolTipText     =   "����ִ���ⲿ�ű�"
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "�ر�"
            Height          =   255
            Index           =   2
            Left            =   1785
            TabIndex        =   101
            ToolTipText     =   "�ر��ⲿ�ű�ִ��"
            Top             =   20
            Width           =   735
         End
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "�ű���Ϣ����"
         Height          =   180
         Left            =   4080
         TabIndex        =   155
         Top             =   360
         Visible         =   0   'False
         Width           =   1080
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�ű��������ã�"
         Height          =   180
         Index           =   6
         Left            =   240
         TabIndex        =   104
         ToolTipText     =   "�밴�û���Ҫ�趨"
         Top             =   360
         Width           =   1260
      End
   End
End
Attribute VB_Name = "sys"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim m_dragItem As ListItem
Dim m_dragNode As Node

Private Sub Combo_lst_Click()
    'lst (for flashget)
    'htm(for All Tools)
    'txt & bat(for All)
    If Combo_lst.ListIndex = 0 Then
        Combo_lst1.caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
    ElseIf Combo_lst.ListIndex = 1 Then
        Combo_lst1.caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
    ElseIf Combo_lst.ListIndex = 2 Then
        Combo_lst1.caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
    End If
End Sub

Private Sub Combo_lst_KeyPress(KeyAscii As Integer)
    'lst (for flashget)
    'htm(for All Tools)
    'txt & bat(for All)
    If Combo_lst.ListIndex = 0 Then
        Combo_lst1.caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
    ElseIf Combo_lst.ListIndex = 1 Then
        Combo_lst1.caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
    ElseIf Combo_lst.ListIndex = 2 Then
        Combo_lst1.caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
    End If
End Sub



Private Sub Combo_rar_name_Click()
    If Combo_rar_name.ListIndex > 0 Then
        fix_name_Text.Text = Combo_rar_name.List(Combo_rar_name.ListIndex)
        Command1.caption = "�޸ĺ�׺"
    Else
        fix_name_Text.Text = ""
        Command1.caption = "��Ӻ�׺"
    End If
End Sub


Private Sub Auto_Password_com_Click()
    On Error Resume Next
    sys.Enabled = False
    Auto_Password_com.caption = "���ڲ���,��ȴ�..."
    Dim html, split_html
    html = Form1.update.OpenURL(sysSet.update_host & "passcode_inf.txt?ntime=" & CDbl(Now()))
    split_html = Split(html, vbCrLf)
    Randomize
    a_count = Int(Rnd * (UBound(split_html) + 1))
    html = Split(split_html(a_count), "|")
    If UBound(html) > 1 Then
        If html(0) <> "" And html(1) <> "" And html(2) <> "" Then
            passcode_text(0) = html(0)
            passcode_text(1) = html(1)
            passcode_text(2) = html(2)
        End If
    End If
    Auto_Password_com.caption = "�Զ���д"
    sys.Enabled = True
End Sub

Private Sub IncLstCtrl_Com1_Click(Index As Integer)
    
    Select Case Index
    Case 0
        If Len(scriptFile.fileName) > 0 And sys_CheckIncLst_NoThisfile(scriptFile.fileName) = True Then
            scriptList.ListItems.Add , , scriptFile.fileName
            scriptList.ListItems(scriptList.ListItems.count).Checked = True
        End If
        
    Case 1
        If MsgBox("�Ƿ�Ҫ�Ƴ�ѡ�е��Զ���Inc�ļ�?" & vbCrLf & "(sys_163��sys_include���ᱻ�Ƴ�)", vbYesNo, "ѯ��") = vbYes Then
            For i = scriptList.ListItems.count To 1 Step -1
                DoEvents
                If scriptList.ListItems(i).Selected = True And scriptList.ListItems(i).Text <> "sys_163" And scriptList.ListItems(i).Text <> "sys_include" Then
                    scriptList.ListItems.Remove i
                End If
            Next
        End If
        
    End Select
End Sub

Private Function sys_CheckIncLst_NoThisfile(scriptFileName As String) As Boolean
    sys_CheckIncLst_NoThisfile = True
    For i = 1 To scriptList.ListItems.count
        If scriptFileName = scriptList.ListItems(i).Text Then
            sys_CheckIncLst_NoThisfile = False
            MsgBox "�ļ��Ѵ���", vbOKOnly, "����"
        End If
    Next
End Function

Private Sub scriptFile_DblClick()
    Call IncLstCtrl_Com1_Click(0)
End Sub

Private Sub scriptList_DblClick()
scriptList.SelectedItem.Checked = Not scriptList.SelectedItem.Checked
End Sub


Private Sub Update_now_Command_Click()
    Form1.Timer3.Enabled = True
    Update_now_Command.caption = "�ٴμ�����"
End Sub

Private Sub def_path_Click(Index As Integer)
    If def_path(1).Value = True Then
        def_path_com.Enabled = True
    Else
        def_path_com.Enabled = False
    End If
End Sub

Private Sub def_path_com_Click()
    On Error Resume Next
retry:
    Folder_path = ""
    If Right(def_path_txt, 1) <> "\" Then def_path_txt = def_path_txt & "\"
    Folder_path = GetFolder("��ѡ��Ĭ���ļ���", def_path_txt, True)
    
    If Mid$(Folder_path, 2, 2) = ":\" Then
        If (GetFileAttributes(Folder_path) = -1) Then MsgBox "��·�����ܱ����ļ�", vbOKOnly + vbExclamation, "����": GoTo retry
        def_path_txt = Folder_path
    End If
End Sub

Private Sub downHS_Change()
    downText.Text = downHS.Value & "KB"
    downOp(5).Value = True
End Sub

Private Sub fix_name_Text_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Command1_Click
    End If
End Sub

Private Sub Form_Load()
    On Error Resume Next
    sys.Width = 9105
    sys.Height = 6555
    Dim i As Byte
    For i = 1 To 9
        FrameL(i).Top = 120
        FrameL(i).Left = 2520
    Next i
    Call Build_TVW_Menu
    Call SysTreeView_NodeClick(SysTreeView.Nodes(1))
    Form1.always_on_top False
    'Dim flags As Integer
    'flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
    'SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, flags
    
    
    Form1.Enabled = False
    scriptFile.Path = App_path & "\include\custom"
    scriptList.Height = scriptFile.Height
    OX_Start_log_Text = OX_Start_log_Text & vbCrLf & vbCrLf & OX_Start_log
    Call sys_def(0)
    Call laod_ini(0)
End Sub

Private Sub Build_TVW_Menu()
    Call SysTreeView.Nodes.Add(, 4, "TVW1", "������������", 1)
    Call SysTreeView.Nodes.Add("TVW1", 4, "TVW2", "�ļ�Ŀ¼����", 2)
    Call SysTreeView.Nodes.Add("TVW1", 4, "TVW3", "�ű�����", 3)
    Call SysTreeView.Nodes.Add("TVW1", 4, "TVW4", "���������", 4)
    Call SysTreeView.Nodes.Add(, 4, "TVW5", "�����������", 5)
    Call SysTreeView.Nodes.Add("TVW5", 4, "TVW6", "�ȼ��뾯���", 6)
    Call SysTreeView.Nodes.Add("TVW5", 4, "TVW7", "�����������", 7)
    Call SysTreeView.Nodes.Add(, 4, "TVW8", "���������", 8)
    Call SysTreeView.Nodes.Add(, 4, "TVW9", "�����쳣��ʾ", 9)
    Dim nodx As Node
    For Each nodx In SysTreeView.Nodes
        nodx.Expanded = True
    Next
    SysTreeView.Nodes(1).Selected = True
    'Set myNod = �ؼ���.Nodes.Add(a, b, key, text, image)
    '����˵��:
    'a: ������,��˭�Ļ����Ͻ��ڵ�,a����˭��keyֵ,����Ǹ��ڵ�,��ʡ��.
    'b: ������ͱ���Ĺ�ϵ , ����Ǹ��ӹ�ϵ, ֵΪtvwchile, ������ֵܹ�ϵ, ֵΪtvwnext
    'tvwlast--1���ýڵ������κ���������relative�б�������ͬһ����Ľڵ�ĺ���
    'tvwNext--2���ýڵ�������relative�б������ڵ�ĺ���
    'tvwPrevius--3���ýڵ�������relative�б������Ľڵ��ǰ��
    'tvwChild--4���ýڵ��Ϊ��relative�б������Ľڵ�ĵ��ӽڵ�
    'key: �ؼ���,Ψһ��.
    'text: �ڵ�����ʾ������
    'image: �ڵ�ǰ��Сͼ�� , ��Ҫ���ͼ��ؼ���, ��ʡ��
    '    With Me.TreeView1.Nodes
    '        .Add , 4, "K1", "���ࣨһ��", Form1.user_list_save.Picture
    '        .Add "K1", 4, , "С����1"
    '        .Add "K1", 4, , "С����2"
    '        .Add , 4, "K2", "���ࣨ����"
    '        .Add "K2", 4, , "С����1"
    '        .Add "K2", 4, , "С����2"
    '    End With
    
End Sub

Private Sub custom_sLabel_Click(Index As Integer)
    Shell "explorer.exe " & App_path & "\include\custom", vbNormalFocus
End Sub

Private Sub SysTreeView_NodeClick(ByVal Node As MSComctlLib.Node)
    Dim i As Byte
    For i = 1 To 9
        If SysTreeView.Nodes(i).Image <> i Then SysTreeView.Nodes(i).Image = i
        FrameL(i).Visible = False
    Next i
    Node.Image = 9 + Node.Index
    FrameL(Node.Index).Visible = True
End Sub

Private Sub Timer1_Timer()
    Timer1.Enabled = False
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Form1.WindowState = 0 Then Form1.always_on_top sysSet.always_top
    Form1.Enabled = True
End Sub

Private Sub frame_def_Click()
    Call sys_def(SysTreeView.SelectedItem.Index)
End Sub

Private Sub frame_rec_Click()
    Call sys_def(SysTreeView.SelectedItem.Index)
    Call laod_ini(SysTreeView.SelectedItem.Index)
End Sub

Private Sub list_copy_Click(Index As Integer)
    If list_copy(1).Value = True Then
        ubb_copy(0).Value = True
    Else
        ubb_copy(1).Value = True
    End If
End Sub

Private Sub LST_Help_Click()
    Dim help_str As String
    help_str = "HTM�����б�(Ĭ��):�����ڸ������ع���" & vbCrLf & _
    "��������: ֱ����������򿪲���" & vbCrLf & vbCrLf & _
    "LST�����б�:������flashget1.96�Ⱦ���汾" & vbCrLf & _
    "��������:�ļ��˵�->����LST�����б�" & vbCrLf & vbCrLf & _
    "TXT& BAT�����б�: �����������ڸ������ع���" & vbCrLf & _
    "��������:�ļ��˵�->����TXT�����б�" & vbCrLf & _
    "          ������ɺ�BAT�ļ���������Ŀ¼����" & vbCrLf & _
    "          �������������"
    Call MsgBox(help_str, vbOKOnly, "�����б��ļ�����˵��")
End Sub

Private Sub proxy_com1_Click()
    proxy_txt1(0).Text = ""
    proxy_txt1(1).Text = ""
    proxy_txt1(2).Text = ""
    proxy_txt2(0).Text = ""
    proxy_txt2(1).Text = ""
    proxy_txt2(2).Text = ""
    ProxyComb(0).ListIndex = 0
    ProxyComb(1).ListIndex = 0
End Sub

Private Sub proxy_com2_Click()
    proxy_txt2(0).Text = proxy_txt1(0).Text
    proxy_txt2(1).Text = proxy_txt1(1).Text
    proxy_txt2(2).Text = proxy_txt1(2).Text
    ProxyComb(1).ListIndex = ProxyComb(0).ListIndex
End Sub

Private Sub proxy_com3_Click()
    proxy_txt1(0).Text = proxy_txt2(0).Text
    proxy_txt1(1).Text = proxy_txt2(1).Text
    proxy_txt1(2).Text = proxy_txt2(2).Text
    ProxyComb(0).ListIndex = ProxyComb(1).ListIndex
End Sub

Private Sub sys_apply_Click()
    On Error Resume Next
    passcode_text(0) = Replace(Replace(passcode_text(0), Chr(10), ""), Chr(13), "")
    passcode_text(1) = Replace(Replace(passcode_text(1), Chr(10), ""), Chr(13), "")
    passcode_text(2) = Replace(Replace(passcode_text(2), Chr(10), ""), Chr(13), "")
    
    If passcode_text(0) = "" Or passcode_text(1) = "" Or passcode_text(2) = "" Then
        If MsgBox("��֤����Ϣ����Ϊ�գ��Ƿ�ָ�Ĭ�ϣ�", vbYesNo + vbExclamation, "����") = vbYes Then
            passcode_text(0) = "wehi"
            passcode_text(1) = "1530930"
            passcode_text(2) = "asd"
        End If
        Exit Sub
    End If
    
    sys.Enabled = False
    
    WriteIniStr "maincenter", "new163passcode_user", passcode_text(0)
    WriteIniStr "maincenter", "new163passcode_album", passcode_text(1)
    WriteIniStr "maincenter", "new163passcode_pw", passcode_text(2)
    
    For i = 0 To 5
        If downOp(i).Value = True Then
            Select Case i
            Case 0
                WriteIniStr "maincenter", "downloadblock", "1024"
            Case 1
                WriteIniStr "maincenter", "downloadblock", "10240"
            Case 2
                WriteIniStr "maincenter", "downloadblock", "20480"
            Case 3
                WriteIniStr "maincenter", "downloadblock", "51200"
            Case 4
                WriteIniStr "maincenter", "downloadblock", "102400"
            Case Else
                Dim block As Long
                block = downHS.Value
                WriteIniStr "maincenter", "downloadblock", block * 1024
            End Select
            
            Exit For
        End If
        
    Next i
    
    If scriptOP(0).Value = True Then
        WriteIniStr "maincenter", "include_script", "delay"
    ElseIf scriptOP(1).Value = True Then
        WriteIniStr "maincenter", "include_script", "first"
    Else
        WriteIniStr "maincenter", "include_script", "close"
    End If
    
    Dim sys_scriptlist_str As String
    sys_scriptlist_str = ""
    For i = 1 To scriptList.ListItems.count
    sys_scriptlist_str = sys_scriptlist_str & "|" & scriptList.ListItems(i).Text
    If scriptList.ListItems(i).Checked = True Then
    sys_scriptlist_str = sys_scriptlist_str & ",1"
    Else
    sys_scriptlist_str = sys_scriptlist_str & ",0"
    End If
    Next
    sys_scriptlist_str = OX_Check_include_scriptlist(Mid(sys_scriptlist_str, 2), False)
    WriteIniStr "maincenter", "include_scriptList", sys_scriptlist_str
    
    
    If autoOp(1).Value = True Then
        WriteIniTF "maincenter", "autocheck", True
    Else
        WriteIniTF "maincenter", "autocheck", False
    End If
    
    If Left(LCase(update_host_Text), 7) = "http://" Or Left(LCase(update_host_Text), 8) = "https://" Then
        WriteIniStr "maincenter", "update_host", update_host_Text
    Else
        WriteIniStr "maincenter", "update_host", "http://www.shanhaijing.net/163/"
    End If
    
    If quitOp(1).Value = True Then
        WriteIniTF "maincenter", "askquit", True
    Else
        WriteIniTF "maincenter", "askquit", False
    End If
    
    If listOp(1).Value = True Then
        WriteIniTF "maincenter", "listshow", True
    Else
        WriteIniTF "maincenter", "listshow", False
    End If
    
    If saveOp(1).Value = True Then
        WriteIniTF "maincenter", "savedef", True
    Else
        WriteIniTF "maincenter", "savedef", False
    End If
    
    If askfloder(1).Value = True Then
        WriteIniTF "maincenter", "openfloder", True
    Else
        WriteIniTF "maincenter", "openfloder", False
    End If
    
    If changepsw(1).Value = True Then
        WriteIniTF "maincenter", "change_psw", True
    Else
        WriteIniTF "maincenter", "change_psw", False
    End If
    
    If ie_window(1).Value = True Then
        WriteIniTF "maincenter", "new_ie_win", True
    Else
        WriteIniTF "maincenter", "new_ie_win", False
    End If
    
    If ox163_window(1).Value = True Then
        WriteIniTF "maincenter", "ox163_ie_win", True
    Else
        WriteIniTF "maincenter", "ox163_ie_win", False
    End If
    
    If set_tray(1).Value = True Then
        WriteIniTF "maincenter", "sysTray", True
    Else
        WriteIniTF "maincenter", "sysTray", False
    End If
    
    If new163passrule(1).Value = True Then
        WriteIniTF "maincenter", "new163pass_rules", True
    Else
        WriteIniTF "maincenter", "new163pass_rules", False
    End If
    
    
    If list_copy(1).Value = True Then
        WriteIniTF "maincenter", "list_copy", True
    Else
        WriteIniTF "maincenter", "list_copy", False
    End If
    
    If file_compare(1).Value = True Then
        WriteIniStr "maincenter", "file_compare", "1"
    ElseIf file_compare(2).Value = True Then
        WriteIniStr "maincenter", "file_compare", "2"
    Else
        WriteIniStr "maincenter", "file_compare", "0"
    End If
    
    
    If set_sbar(1).Value = True Then
        WriteIniTF "maincenter", "bottom_StatusBar", True
    Else
        WriteIniTF "maincenter", "bottom_StatusBar", False
    End If
    
    If set_checkall(1).Value = True Then
        WriteIniTF "maincenter", "check_all", True
    Else
        WriteIniTF "maincenter", "check_all", False
    End If
    
    If set_url_folder(1).Value = True Then
        WriteIniTF "maincenter", "url_folder", True
    Else
        WriteIniTF "maincenter", "url_folder", False
    End If
    
    If def_path(1).Value = True Then
        WriteIniTF "maincenter", "def_path_tf", True
        WriteIniStr "maincenter", "def_path", def_path_txt.Text
    Else
        WriteIniTF "maincenter", "def_path_tf", False
        WriteIniStr "maincenter", "def_path", ""
    End If
    
    WriteIniStr "maincenter", "time_out", VS_timeout.Value
    WriteIniStr "maincenter", "retry_times", VS_retry.Value
    WriteIniStr "maincenter", "list_type", Combo_lst.ListIndex
    WriteIniStr "maincenter", "fix_rar", Combo_rar.ListIndex
    
    WriteIniStr "maincenter", "Unicode_File", Combo_unicode_ctrl(0).ListIndex
    WriteIniStr "maincenter", "Unicode_Str", Combo_unicode_ctrl(1).ListIndex
    
    fix_rar_name = ""
    If Combo_rar_name.ListCount > 1 Then
        For i = 1 To Combo_rar_name.ListCount - 1
            fix_rar_name = fix_rar_name & Combo_rar_name.List(i) & "|"
        Next i
    End If
    If Right$(fix_rar_name, 1) = "|" Then fix_rar_name = Left$(fix_rar_name, Len(fix_rar_name) - 1)
    WriteIniStr "maincenter", "fix_rar_name", fix_rar_name
    
    
    Select Case ProxyComb(0).ListIndex
    Case 1
        WriteIniStr "proxyset", "proxy_A_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_A_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_A_type", "icUseDefault"
    End Select
    
    Select Case ProxyComb(1).ListIndex
    Case 1
        WriteIniStr "proxyset", "proxy_B_type", "icDirect"
    Case 2
        WriteIniStr "proxyset", "proxy_B_type", "icNamedProxy"
    Case Else
        WriteIniStr "proxyset", "proxy_B_type", "icUseDefault"
    End Select
    
    
    proxy_txt1(0) = Trim(Replace(Replace(proxy_txt1(0), Chr(10), ""), Chr(13), ""))
    proxy_txt1(1) = Trim(Replace(Replace(proxy_txt1(1), Chr(10), ""), Chr(13), ""))
    proxy_txt1(2) = Trim(Replace(Replace(proxy_txt1(2), Chr(10), ""), Chr(13), ""))
    proxy_txt2(0) = Trim(Replace(Replace(proxy_txt2(0), Chr(10), ""), Chr(13), ""))
    proxy_txt2(1) = Trim(Replace(Replace(proxy_txt2(1), Chr(10), ""), Chr(13), ""))
    proxy_txt2(2) = Trim(Replace(Replace(proxy_txt2(2), Chr(10), ""), Chr(13), ""))
    
    
    WriteIniStr "proxyset", "proxy_A", proxy_txt1(0)
    WriteIniStr "proxyset", "proxy_A_user", proxy_txt1(1)
    WriteIniStr "proxyset", "proxy_A_pw", proxy_txt1(2)
    WriteIniStr "proxyset", "proxy_B", proxy_txt2(0)
    WriteIniStr "proxyset", "proxy_B_user", proxy_txt2(1)
    WriteIniStr "proxyset", "proxy_B_pw", proxy_txt2(2)
    WriteIniStr "proxyset", "web_proxy", web_proxy_box.Value
    
    
    '���������趨
    'sysSet.ver = CInt(GetIniStr("maincenter", "ver"))
    sysSet.update_host = GetIniStr("maincenter", "update_host")
    sysSet.downloadblock = CLng(GetIniStr("maincenter", "downloadblock"))
    sysSet.include_script = GetIniStr("maincenter", "include_script")
    sysSet.autocheck = GetIniTF("maincenter", "autocheck")
    sysSet.askquit = GetIniTF("maincenter", "askquit")
    sysSet.listshow = GetIniTF("maincenter", "listshow")
    sysSet.savedef = GetIniTF("maincenter", "savedef")
    sysSet.openfloder = GetIniTF("maincenter", "openfloder")
    sysSet.change_psw = GetIniTF("maincenter", "change_psw")
    sysSet.always_top = GetIniTF("maincenter", "always_top")
    sysSet.new_ie_win = GetIniTF("maincenter", "new_ie_win")
    sysSet.ox163_ie_win = GetIniTF("maincenter", "ox163_ie_win")
    sysSet.time_out = CInt(GetIniStr("maincenter", "time_out"))
    sysSet.retry_times = CInt(GetIniStr("maincenter", "retry_times"))
    
    sysSet.list_type = CByte(GetIniStr("maincenter", "list_type"))
    
    sysSet.fix_rar = CByte(GetIniStr("maincenter", "fix_rar"))
    sysSet.fix_rar_name = Trim(GetIniStr("maincenter", "fix_rar_name"))
    
    sysSet.Unicode_File = CByte(GetIniStr("maincenter", "Unicode_File"))
    sysSet.Unicode_Str = CByte(GetIniStr("maincenter", "Unicode_Str"))
    
    sysSet.sysTray = GetIniTF("maincenter", "sysTray")
    sysSet.list_copy = GetIniTF("maincenter", "list_copy")
    
    sysSet.file_compare = CInt(GetIniStr("maincenter", "file_compare"))
    
    sysSet.check_all = GetIniTF("maincenter", "check_all")
    
    sysSet.url_folder = GetIniTF("maincenter", "url_folder")
    
    sysSet.new163passcode_def(0) = GetIniStr("maincenter", "new163passcode_user")
    sysSet.new163passcode_def(1) = GetIniStr("maincenter", "new163passcode_album")
    sysSet.new163passcode_def(2) = GetIniStr("maincenter", "new163passcode_pw")
    
    sysSet.bottom_StatusBar = GetIniTF("maincenter", "bottom_StatusBar")
    If sysSet.bottom_StatusBar = True Then
        Form1.show_StatusBar = 255
        Form1.StatusBar.Visible = True
        If Form1.form_height < 3000 Then Form1.form_height = 1470 + Form1.show_StatusBar
        If Form1.Height < 1470 + Form1.show_StatusBar Then Form1.Height = 1470 + Form1.show_StatusBar
        Form1.frame_resize
    Else
        Form1.show_StatusBar = 0
        Form1.StatusBar.Visible = False
        If Form1.form_height < 3000 Then Form1.form_height = 1470
        Form1.frame_resize
    End If
    
    sysSet.def_path_tf = GetIniTF("maincenter", "def_path_tf")
    
    If sysSet.def_path_tf = True Then
        sysSet.def_path = GetIniStr("maincenter", "def_path")
        Label1.caption = "׼��OX163..." & vbCrLf & "    �������·��"
        If Mid$(sysSet.def_path, 2, 2) <> ":\" And Len(sysSet.def_path) > 2 Then GoTo reset_path
        If Right(sysSet.def_path, 1) = "\" Then sysSet.def_path = Mid$(sysSet.def_path, 1, Len(sysSet.def_path) - 1): WriteIniStr "maincenter", "def_path", sysSet.def_path
        '        Dim start_check1
        '        start_check1 = Split(sysSet.def_path, "\")
        '
        '        For i = 0 To UBound(start_check1)
        '            If i > 0 Then
        '                sysSet.def_path = sysSet.def_path & "\" & start_check1(i)
        '                If Dir(sysSet.def_path, vbDirectory) = "" Then
        '                    MkDir sysSet.def_path
        '                End If
        '            Else
        '                sysSet.def_path = start_check1(0)
        '            End If
        '        Next i
        If (GetFileAttributes(sysSet.def_path) = -1) Then GoTo reset_path
    Else
reset_path:
        If sysSet.def_path <> "" Then sysSet.def_path = "": WriteIniStr "maincenter", "def_path", ""
    End If
    
    sysSet.proxy_A = GetIniStr("proxyset", "proxy_A_type")
    Select Case sysSet.proxy_A
    Case "icDirect"
        sysSet.proxy_A_type = 1
    Case "icNamedProxy"
        sysSet.proxy_A_type = 2
    Case Else
        sysSet.proxy_A_type = 0
    End Select
    
    sysSet.proxy_A = GetIniStr("proxyset", "proxy_B_type")
    Select Case sysSet.proxy_A
    Case "icDirect"
        sysSet.proxy_B_type = 1
    Case "icNamedProxy"
        sysSet.proxy_B_type = 2
    Case Else
        sysSet.proxy_B_type = 0
    End Select
    
    sysSet.proxy_A = Trim(GetIniStr("proxyset", "proxy_A"))
    sysSet.proxy_A_user = Trim(GetIniStr("proxyset", "proxy_A_user"))
    sysSet.proxy_A_pw = GetIniStr("proxyset", "proxy_A_pw")
    sysSet.proxy_B = Trim(GetIniStr("proxyset", "proxy_B"))
    sysSet.proxy_B_user = Trim(GetIniStr("proxyset", "proxy_B_user"))
    sysSet.proxy_B_pw = GetIniStr("proxyset", "proxy_B_pw")
    
    sysSet.web_proxy = GetIniStr("proxyset", "web_proxy")
    Select Case sysSet.web_proxy
    Case "0"
        sysSet.web_proxy = 0
    Case Else
        sysSet.web_proxy = 1
    End Select
    
    Proxy_set
    
    If sysSet.list_type >= 0 And sysSet.list_type <= 2 Then
        Form1.list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.out_all.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
        Form1.user_list_output.Picture = Form1.ImageLibrary_Normal.ListImages(10 + sysSet.list_type).Picture
    End If
    
    sys.Enabled = True
End Sub

Private Sub ubb_copy_Click(Index As Integer)
    If ubb_copy(1).Value = True Then
        list_copy(0).Value = True
    Else
        list_copy(1).Value = True
    End If
End Sub

Private Sub sys_def_com_Click(Index As Integer)
    Call sys_def(0)
End Sub

Private Sub sys_def(ByVal frameID As Byte)
    '������������------------------------------------
    If frameID = 0 Or frameID = 1 Then
        '��������
        downOp(1).Value = True
        '��ʱ
        VS_timeout.Value = 30
        '����
        VS_retry.Value = 5
        '���������б��ʽ
        Combo_lst.ListIndex = 1
    End If
    
    '�ļ�Ŀ¼����------------------------------------
    If frameID = 0 Or frameID = 2 Then
        'Unicode�ļ���\�ļ���
        Combo_unicode_ctrl(0).ListIndex = 0
        '����Unicode�ı��ַ���
        Combo_unicode_ctrl(1).ListIndex = 0
        '����Ĭ��·��
        def_path(0).Value = True
        def_path_txt = ""
        '����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼
        set_url_folder(0).Value = True
        '�����ļ����Ѵ���
        file_compare(1).Value = True
        'αͼ���
        Combo_rar.ListIndex = 1
        fix_name_list "RAR|ZIP|7Z|PNG|BMP"
        Combo_rar_name.ListIndex = 0
    End If
    
    '�ű�����---------------------------------------
    If frameID = 0 Or frameID = 3 Then
        scriptOP(0).Value = True
        scriptList.ListItems.Clear
        scriptList.ListItems.Add , , "sys_163"
        scriptList.ListItems(scriptList.ListItems.count).Checked = True
        scriptList.ListItems.Add , , "sys_include"
        scriptList.ListItems(scriptList.ListItems.count).Checked = True
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 4 Then
        proxy_txt1(0).Text = ""
        proxy_txt1(1).Text = ""
        proxy_txt1(2).Text = ""
        proxy_txt2(0).Text = ""
        proxy_txt2(1).Text = ""
        proxy_txt2(2).Text = ""
        ProxyComb(0).ListIndex = 0
        ProxyComb(1).ListIndex = 0
        web_proxy_box.Value = 1
    End If
    
    '�����������------------------------------------
    If frameID = 0 Or frameID = 5 Then
        '�Զ�����
        autoOp(1).Value = True
        '���·���������
        update_host_Combo.List(0) = "Ĭ������|" & "http://www.shanhaijing.net/163/"
        update_host_1 = Split(update_host_info1, "|")
        update_host_2 = Split(update_host_info2, "|")
        For i = 0 To UBound(update_host_1)
            update_host_Combo.List(i + 1) = update_host_2(i) & "|" & update_host_1(i)
        Next i
        update_host_Combo.ListIndex = 0
        '�б�ʱ��ʾ�б�
        listOp(0).Value = True
        '�Ƿ���С����ϵͳ����
        set_tray(1).Value = True
        '�Ƿ���ʾ��Ϣ��
        set_sbar(1).Value = True
        '�Ƿ��Զ�ȫ����Ƕ�ѡ��
        set_checkall(1).Value = True
        
    End If
    
    '�ȼ��뾯���------------------------------------
    If frameID = 0 Or frameID = 6 Then
        '��������(url && Lst)��������
        list_copy(1).Value = True
        'Ŀ¼����ʱ�����浽downloadĿ¼
        saveOp(1).Value = True
        '����ִ��ʱ�����˳�ѯ��
        quitOp(1).Value = True
        '�������ʱ��ѯ���Ƿ��������룿
        changepsw(1).Value = True
        '������ɺ��Ƿ������ʾ��
        askfloder(1).Value = True
    End If
    
    '�����������------------------------------------
    If frameID = 0 Or frameID = 7 Then
        '163�����֤��
        passcode_text(0) = "wehi"
        passcode_text(1) = "1530930"
        passcode_text(2) = "asd"
        '�Ƿ�����163���������������
        new163passrule(1).Value = True
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 8 Then
        '�Ƿ���ֹ����������¿�����
        ie_window(1).Value = True
        '�Ƿ���OX163���´���
        ox163_window(1).Value = True
    End If
End Sub

Private Sub sys_no_Click()
    Unload sys
End Sub

Private Sub laod_ini(ByVal frameID As Byte)
    '������������------------------------------------
    If frameID = 0 Or frameID = 1 Then
        '��������
        Select Case CLng(GetIniStr("maincenter", "downloadblock"))
        Case 1024
            downOp(0).Value = True
        Case 10240
            downOp(1).Value = True
        Case 20480
            downOp(2).Value = True
        Case 51200
            downOp(3).Value = True
        Case 102400
            downOp(4).Value = True
        Case Else
            downOp(5).Value = True
            If CLng(GetIniStr("maincenter", "downloadblock")) <= 1024000 Then
                downHS.Value = Int(CLng(GetIniStr("maincenter", "downloadblock")) / 1024)
            Else
                downHS.Value = 1000
            End If
        End Select
        '��ʱ
        If CInt(GetIniStr("maincenter", "time_out")) <= 200 And CInt(GetIniStr("maincenter", "time_out")) >= 10 Then
            VS_timeout.Value = CInt(GetIniStr("maincenter", "time_out"))
        Else
            VS_timeout.Value = 30
        End If
        '����
        If CInt(GetIniStr("maincenter", "retry_times")) <= 255 And CInt(GetIniStr("maincenter", "time_out")) >= 0 Then
            VS_retry.Value = CInt(GetIniStr("maincenter", "retry_times"))
        Else
            VS_retry.Value = 20
        End If
        '���������б��ʽ
        If CByte(GetIniStr("maincenter", "list_type")) >= 0 And CByte(GetIniStr("maincenter", "list_type")) < 3 Then
            Combo_lst.ListIndex = CByte(GetIniStr("maincenter", "list_type"))
        End If
    End If
    
    '�ļ�Ŀ¼����------------------------------------
    If frameID = 0 Or frameID = 2 Then
        'Unicode�ļ���\�ļ���
        If CByte(GetIniStr("maincenter", "Unicode_File")) >= 0 And CByte(GetIniStr("maincenter", "Unicode_File")) < 3 Then
            Combo_unicode_ctrl(0).ListIndex = CByte(GetIniStr("maincenter", "Unicode_File"))
        End If
        '����Unicode�ı��ַ���
        If CByte(GetIniStr("maincenter", "Unicode_Str")) >= 0 And CByte(GetIniStr("maincenter", "Unicode_Str")) < 3 Then
            Combo_unicode_ctrl(1).ListIndex = CByte(GetIniStr("maincenter", "Unicode_Str"))
        End If
        '����Ĭ��·��
        If GetIniTF("maincenter", "def_path_tf") = True Then
            def_path(1).Value = True
            def_path_txt = GetIniStr("maincenter", "def_path")
        End If
        '����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼
        If GetIniTF("maincenter", "url_folder") = True Then set_url_folder(1).Value = True
        '�����ļ����Ѵ���
        If CInt(GetIniStr("maincenter", "file_compare")) = 0 Then
            file_compare(0).Value = True
        ElseIf CInt(GetIniStr("maincenter", "file_compare")) = 2 Then
            file_compare(2).Value = True
        Else
            file_compare(1).Value = True
        End If
        'αͼ���
        If CByte(GetIniStr("maincenter", "fix_rar")) >= 0 And CByte(GetIniStr("maincenter", "fix_rar")) < 3 Then
            Combo_rar.ListIndex = CByte(GetIniStr("maincenter", "fix_rar"))
        End If
        fix_name_list Trim(GetIniStr("maincenter", "fix_rar_name"))
    End If
    
    '�ű�����---------------------------------------
    If frameID = 0 Or frameID = 3 Then
        Select Case GetIniStr("maincenter", "include_script")
        Case "first"
            scriptOP(1).Value = True
        Case "close"
            scriptOP(2).Value = True
        Case Else
            scriptOP(0).Value = True
        End Select
        
        Dim sys_scriptlist_str, split_i
        scriptList.ListItems.Clear
        sys_scriptlist_str = Split(OX_Check_include_scriptlist(GetIniStr("maincenter", "include_scriptList"), False), "|")
        For split_i = 0 To UBound(sys_scriptlist_str)
            scriptList.ListItems.Add , , Left(sys_scriptlist_str(split_i), Len(sys_scriptlist_str(split_i)) - 2)
            scriptList.ListItems(scriptList.ListItems.count).Checked = (Right(sys_scriptlist_str(split_i), 1) = "1")
        Next
        
        
    End If
    
    '�������������------------------------------------
    If frameID = 0 Or frameID = 4 Then
        Select Case GetIniStr("proxyset", "proxy_A_type")
        Case "icDirect"
            ProxyComb(0).ListIndex = 1
        Case "icNamedProxy"
            ProxyComb(0).ListIndex = 2
        Case Else
            ProxyComb(0).ListIndex = 0
        End Select
        Select Case GetIniStr("proxyset", "proxy_B_type")
        Case "icDirect"
            ProxyComb(1).ListIndex = 1
        Case "icNamedProxy"
            ProxyComb(1).ListIndex = 2
        Case Else
            ProxyComb(1).ListIndex = 0
        End Select
        
        Dim proxy_str(2) As String
        Dim split_str
        proxy_str(0) = Trim(GetIniStr("proxyset", "proxy_A"))
        proxy_str(1) = Trim(GetIniStr("proxyset", "proxy_A_user"))
        proxy_str(2) = GetIniStr("proxyset", "proxy_A_pw")
        
        proxy_str(0) = Replace(Replace(proxy_str(0), Chr(10), ""), Chr(13), "")
        proxy_str(1) = Replace(Replace(proxy_str(1), Chr(10), ""), Chr(13), "")
        proxy_str(2) = Replace(Replace(proxy_str(2), Chr(10), ""), Chr(13), "")
        
        If Len(proxy_str(0)) > 0 Then
            proxy_txt1(0) = proxy_str(0)
            proxy_txt1(1) = proxy_str(1)
            proxy_txt1(2) = proxy_str(2)
        End If
        
        proxy_str(0) = Trim(GetIniStr("proxyset", "proxy_B"))
        proxy_str(1) = Trim(GetIniStr("proxyset", "proxy_B_user"))
        proxy_str(2) = GetIniStr("proxyset", "proxy_B_pw")
        
        proxy_str(0) = Replace(Replace(proxy_str(0), Chr(10), ""), Chr(13), "")
        proxy_str(1) = Replace(Replace(proxy_str(1), Chr(10), ""), Chr(13), "")
        proxy_str(2) = Replace(Replace(proxy_str(2), Chr(10), ""), Chr(13), "")
        
        If Len(proxy_str(0)) > 0 Then
            proxy_txt2(0) = proxy_str(0)
            proxy_txt2(1) = proxy_str(1)
            proxy_txt2(2) = proxy_str(2)
        End If
        
        Select Case GetIniStr("proxyset", "web_proxy")
        Case "0"
            web_proxy_box.Value = 0
        Case Else
            web_proxy_box.Value = 1
        End Select
    End If
    '�����������------------------------------------
    If frameID = 0 Or frameID = 5 Then
        '�Զ�����
        If GetIniTF("maincenter", "autocheck") = False Then autoOp(0).Value = True
        '���·���������
        update_host_Combo.List(0) = "INI����|" & GetIniStr("maincenter", "update_host")
        If update_host_Combo.List(0) = "INI����|" Then update_host_Combo.List(0) = "Ĭ������|" & "http://www.shanhaijing.net/163/"
        update_host_Combo.ListIndex = 0
        '�б�ʱ��ʾ�б�
        If GetIniTF("maincenter", "listshow") = True Then listOp(1).Value = True
        '�Ƿ���С����ϵͳ����
        If GetIniTF("maincenter", "sysTray") = False Then set_tray(0).Value = True
        '�Ƿ���ʾ��Ϣ��
        If GetIniTF("maincenter", "bottom_StatusBar") = False Then set_sbar(0).Value = True
        '�Ƿ��Զ�ȫ����Ƕ�ѡ��
        If GetIniTF("maincenter", "check_all") = False Then set_checkall(0).Value = True
    End If
    '�ȼ��뾯���------------------------------------
    If frameID = 0 Or frameID = 6 Then
        '��������(url && Lst)��������
        If GetIniTF("maincenter", "list_copy") = False Then list_copy(0).Value = True
        'Ŀ¼����ʱ�����浽downloadĿ¼
        If GetIniTF("maincenter", "savedef") = False Then saveOp(0).Value = True
        '����ִ��ʱ�����˳�ѯ��
        If GetIniTF("maincenter", "askquit") = False Then quitOp(0).Value = True
        '�������ʱ��ѯ���Ƿ��������룿
        If GetIniTF("maincenter", "change_psw") = False Then changepsw(0).Value = True
        '������ɺ��Ƿ������ʾ��
        If GetIniTF("maincenter", "openfloder") = False Then askfloder(0).Value = True
    End If
    '�����������------------------------------------
    If frameID = 0 Or frameID = 7 Then
        '163�����֤��
        passcode_text(0) = GetIniStr("maincenter", "new163passcode_user")
        passcode_text(1) = GetIniStr("maincenter", "new163passcode_album")
        passcode_text(2) = GetIniStr("maincenter", "new163passcode_pw")
        If passcode_text(0) = "" Or passcode_text(1) = "" Or passcode_text(2) = "" Then
            passcode_text(0) = "wehi"
            passcode_text(1) = "1530930"
            passcode_text(2) = "asd"
        End If
        '�Ƿ�����163���������������
        If GetIniTF("maincenter", "new163pass_rules") = False Then new163passrule(0).Value = True
    End If
    '�������������------------------------------------
    If frameID = 0 Or frameID = 8 Then
        '�Ƿ���ֹ����������¿�����
        If GetIniTF("maincenter", "new_ie_win") = False Then ie_window(0).Value = True
        '�Ƿ���OX163���´���
        If GetIniTF("maincenter", "ox163_ie_win") = False Then ox163_window(0).Value = True
    End If
End Sub
Sub fix_name_list(ByVal fix_rar_name As String)
    Combo_rar_name.Clear
    Combo_rar_name.AddItem "����º�׺", 0
    Combo_rar_name.ListIndex = 0
    If fix_rar_name = "" Or fix_rar_name = "-1" Then Exit Sub
    name_list = Split(fix_rar_name, "|")
    For i = 0 To UBound(name_list)
        name_list(i) = Trim(name_list(i))
        If Len(name_list(i)) > 0 And is_fileName(name_list(i)) Then Combo_rar_name.AddItem name_list(i), i + 1
    Next i
    Combo_rar_name.ListIndex = 0
End Sub

'Private Function is_fileName(ByVal file_name As String) As Boolean
'    is_fileName = True
'    If InStr(file_name, Chr(92)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(47)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(34)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(63)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(58)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(42)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(60)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(62)) > 0 Then is_fileName = False: Exit Function
'    If InStr(file_name, Chr(124)) > 0 Then is_fileName = False: Exit Function
'
'    If Left(file_name, 1) = "." Then is_fileName = False: Exit Function
'    If Right(file_name, 1) = "." Then is_fileName = False: Exit Function
'End Function

Private Sub Command1_Click()
    Dim pos_i As Integer
    pos_i = Combo_rar_name.ListIndex
    For i = 1 To Combo_rar_name.ListCount - 1
        If UCase(fix_name_Text.Text) = UCase(Combo_rar_name.List(i)) Then
            MsgBox "�ļ���׺���ظ���", vbOKOnly + vbExclamation, "����"
            Combo_rar_name.ListIndex = pos_i
            Exit Sub
        End If
    Next i
    Combo_rar_name.ListIndex = pos_i
    If Combo_rar_name.ListIndex = 0 Then
        If is_fileName(fix_name_Text.Text) And fix_name_Text.Text <> "" Then
            Combo_rar_name.AddItem fix_name_Text.Text
            Combo_rar_name.ListIndex = Combo_rar_name.ListCount - 1
        Else
            MsgBox "�ļ���׺������ȷ��", vbOKOnly + vbExclamation, "����"
        End If
    Else
        If is_fileName(fix_name_Text.Text) And fix_name_Text.Text <> "" Then
            Combo_rar_name.AddItem fix_name_Text.Text, Combo_rar_name.ListCount
        ElseIf fix_name_Text.Text = "" Then
            Combo_rar_name.RemoveItem Combo_rar_name.ListIndex
            Combo_rar_name.ListIndex = 0
        Else
            MsgBox "�ļ���׺������ȷ��", vbOKOnly + vbExclamation, "����"
        End If
    End If
End Sub


Private Sub sys_rec_Click(Index As Integer)
    Call sys_def(0)
    Call laod_ini(0)
End Sub

Private Sub sys_yes_Click()
    Call sys_apply_Click
    Unload sys
End Sub

Private Sub update_host_Combo_Click()
    update_host_Text = update_host_Combo.List(update_host_Combo.ListIndex)
    update_host_Text = Mid$(update_host_Text, InStr(update_host_Text, "|") + 1)
End Sub

Private Sub update_host_Combo_KeyUp(KeyCode As Integer, Shift As Integer)
    update_host_Text = update_host_Combo.List(update_host_Combo.ListIndex)
    update_host_Text = Mid$(update_host_Text, InStr(update_host_Text, "|") + 1)
End Sub

Private Sub VS_retry_Change()
    If VS_retry.Value > 0 Then
        LB_retry.caption = VS_retry.Value & "��"
    Else
        LB_retry.caption = "��������"
    End If
End Sub

Private Sub VS_timeout_Change()
    LB_timeout.caption = VS_timeout.Value & "��"
End Sub

'-----------------------------------------------------------------------------
Private Sub scriptList_DragOver(Source As Control, x As Single, Y As Single, State As Integer)
    Dim li As ListItem
    
    Set li = scriptList.HitTest(x, Y)
    If Not li Is Nothing Then
        li.EnsureVisible
        scriptList.DropHighlight = li
    End If
End Sub
Private Sub scriptList_MouseDown(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 1 Then
        Set m_dragItem = scriptList.HitTest(x, Y)
    End If
End Sub
Private Sub scriptList_MouseMove(Button As Integer, Shift As Integer, x As Single, Y As Single)
    If Button = 1 Then
        If Not m_dragItem Is Nothing Then
            'scriptList.DragIcon = m_dragItem.CreateDragImage
            scriptList.Drag vbBeginDrag
        End If
    End If
End Sub
Private Sub scriptList_DragDrop(Source As Control, x As Single, Y As Single)
    Dim li As ListItem
    Dim addli As ListItem
    Dim i As Integer
    Dim li_check As Boolean
    
    Set li = scriptList.HitTest(x, Y)
    
    If (Not li Is Nothing) And (Not m_dragItem Is Nothing) Then
        
        If li.Index <> m_dragItem.Index Then
            li_check = True
            li_check = scriptList.ListItems(m_dragItem.Index).Checked
            If li.Index > m_dragItem.Index Then
                scriptList.ListItems.Remove m_dragItem.Index
                Set addli = scriptList.ListItems.Add(li.Index + 1, m_dragItem.key, m_dragItem.Text)
                addli.Checked = li_check
            Else
                scriptList.ListItems.Remove m_dragItem.Index
                Set addli = scriptList.ListItems.Add(li.Index, m_dragItem.key, m_dragItem.Text)
                addli.Checked = li_check
            End If
            For i = 1 To m_dragItem.ListSubItems.count
                addli.SubItems(i) = m_dragItem.ListSubItems(i).Text
            Next i
        End If
    End If
    
    scriptList.DropHighlight = Nothing
    Set m_dragItem = Nothing
    scriptList.Refresh
End Sub

'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------


Private Sub web_proxy_box_Click()
    If web_proxy_box.Value <> sysSet.web_proxy And web_proxy_box.Value = 0 Then
        MsgBox "�رոù��ܺ󣬿�����Ҫ�����������������Ч", vbOKOnly, "��ʾ"
    End If
End Sub
