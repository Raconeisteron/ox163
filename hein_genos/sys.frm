VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form sys 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "OX163��������"
   ClientHeight    =   14190
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   13875
   Icon            =   "sys.frx":0000
   LinkTopic       =   "sys"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   14190
   ScaleWidth      =   13875
   Begin VB.Frame Frame6 
      Caption         =   "�޸�OX163����ϵͳ�ļ�"
      Height          =   4215
      Left            =   6960
      TabIndex        =   128
      Top             =   9840
      Visible         =   0   'False
      Width           =   6735
      Begin VB.PictureBox Picture21 
         BorderStyle     =   0  'None
         Height          =   1455
         Left            =   240
         ScaleHeight     =   1455
         ScaleWidth      =   6255
         TabIndex        =   129
         Top             =   360
         Width           =   6255
         Begin VB.CommandButton Com3 
            Caption         =   $"sys.frx":406A
            Height          =   1335
            Left            =   120
            TabIndex        =   130
            Top             =   0
            Width           =   6015
         End
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "��������"
      Height          =   4215
      Left            =   120
      TabIndex        =   89
      Top             =   9840
      Visible         =   0   'False
      Width           =   6735
      Begin VB.PictureBox Picture7 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3360
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   120
         Top             =   1200
         Width           =   2475
         Begin VB.OptionButton saveOp 
            Caption         =   "ѯ��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   122
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton saveOp 
            Caption         =   "ֱ�ӱ���"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   121
            Top             =   0
            Width           =   1335
         End
      End
      Begin VB.PictureBox Picture8 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   117
         Top             =   1920
         Width           =   1395
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   119
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton changepsw 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   118
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture9 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   114
         Top             =   2640
         Width           =   1395
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   116
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton askfloder 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   115
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture3 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3360
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   111
         Top             =   480
         Width           =   1395
         Begin VB.OptionButton set_tray 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   113
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_tray 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   112
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture16 
         BorderStyle     =   0  'None
         Height          =   1095
         Left            =   480
         ScaleHeight     =   1095
         ScaleWidth      =   2115
         TabIndex        =   96
         Top             =   1920
         Width           =   2115
         Begin VB.OptionButton file_compare 
            Caption         =   "���Ƚ� ����ͬ���ļ�"
            Height          =   255
            Index           =   2
            Left            =   0
            TabIndex        =   132
            ToolTipText     =   "skip same name files"
            Top             =   360
            Width           =   2055
         End
         Begin VB.OptionButton file_compare 
            Caption         =   "�Ƚ� ������ͬ���ļ�"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   98
            ToolTipText     =   "skip same files"
            Top             =   0
            Width           =   2055
         End
         Begin VB.OptionButton file_compare 
            Caption         =   "���Ƚ� ���������ļ�"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   97
            ToolTipText     =   "rename as new files"
            Top             =   720
            Width           =   2055
         End
      End
      Begin VB.PictureBox Picture14 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   2475
         TabIndex        =   93
         Top             =   1200
         Width           =   2475
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Shift+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   95
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton ubb_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   94
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
         TabIndex        =   90
         Top             =   480
         Width           =   2475
         Begin VB.OptionButton list_copy 
            Caption         =   "Ctrl+C"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   92
            Top             =   0
            Width           =   975
         End
         Begin VB.OptionButton list_copy 
            Caption         =   "Shift+C"
            Height          =   255
            Index           =   0
            Left            =   1200
            TabIndex        =   91
            Top             =   0
            Width           =   975
         End
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ŀ¼����ʱ�����浽downloadĿ¼��"
         Height          =   180
         Left            =   3360
         TabIndex        =   126
         ToolTipText     =   "����ѡ��(��)��ֹ���Ᵽ��"
         Top             =   960
         Width           =   2880
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�������ʱ��ѯ���Ƿ��������룿"
         Height          =   180
         Left            =   3360
         TabIndex        =   125
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1680
         Width           =   2700
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "������ɺ��Ƿ������ʾ��"
         Height          =   180
         Left            =   3360
         TabIndex        =   124
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2400
         Width           =   2520
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ���С����ϵͳ���̣�"
         Height          =   180
         Index           =   4
         Left            =   3360
         TabIndex        =   123
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   240
         Width           =   1980
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�����ļ����Ѵ��ڣ�"
         Height          =   180
         Index           =   10
         Left            =   240
         TabIndex        =   101
         ToolTipText     =   "�밴�û���Ҫ�趨"
         Top             =   1680
         Width           =   1620
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����UBB��ǩ:[url], ��������"
         Height          =   180
         Index           =   9
         Left            =   240
         TabIndex        =   100
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
         TabIndex        =   99
         ToolTipText     =   "������ִ�����߳��������ѡ��(��)"
         Top             =   240
         Width           =   2430
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "�������������"
      Height          =   4215
      Left            =   240
      TabIndex        =   69
      Top             =   480
      Visible         =   0   'False
      Width           =   6615
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   1
         ItemData        =   "sys.frx":40B2
         Left            =   120
         List            =   "sys.frx":40BF
         Style           =   2  'Dropdown List
         TabIndex        =   88
         Top             =   1920
         Width           =   3135
      End
      Begin VB.ComboBox ProxyComb 
         Height          =   300
         Index           =   0
         ItemData        =   "sys.frx":40FE
         Left            =   120
         List            =   "sys.frx":410B
         Style           =   2  'Dropdown List
         TabIndex        =   87
         Top             =   480
         Width           =   3135
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   81
         Top             =   2280
         Width           =   2295
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   80
         Top             =   1920
         Width           =   2295
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   2
         Left            =   4080
         TabIndex        =   77
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   1
         Left            =   4080
         TabIndex        =   76
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox proxy_txt1 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   73
         Top             =   840
         Width           =   3135
      End
      Begin VB.PictureBox proxy_pic 
         BorderStyle     =   0  'None
         Height          =   375
         Left            =   3240
         ScaleHeight     =   375
         ScaleWidth      =   3135
         TabIndex        =   71
         Top             =   3600
         Width           =   3135
         Begin VB.CommandButton proxy_com3 
            Caption         =   "����B��A"
            Height          =   375
            Left            =   2040
            TabIndex        =   86
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com2 
            Caption         =   "����A��B"
            Height          =   375
            Left            =   840
            TabIndex        =   85
            Top             =   0
            Width           =   1095
         End
         Begin VB.CommandButton proxy_com1 
            Caption         =   "���"
            Height          =   375
            Left            =   0
            TabIndex        =   84
            Top             =   0
            Width           =   735
         End
      End
      Begin VB.TextBox proxy_txt2 
         Height          =   270
         Index           =   0
         Left            =   120
         TabIndex        =   70
         Top             =   2280
         Width           =   3135
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   7
         Left            =   3360
         TabIndex        =   83
         Top             =   2340
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   6
         Left            =   3360
         TabIndex        =   82
         Top             =   1965
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   4
         Left            =   3360
         TabIndex        =   79
         Top             =   900
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "�û���:"
         Height          =   180
         Index           =   3
         Left            =   3360
         TabIndex        =   78
         Top             =   525
         Width           =   630
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��ʽ 127.0.0.1:80������IP����ַ:�˿ڣ����û��������Ϊ��"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   2
         Left            =   120
         TabIndex        =   75
         Top             =   2880
         Width           =   5040
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��������B������ͼƬ����"
         Height          =   180
         Index           =   1
         Left            =   120
         TabIndex        =   74
         Top             =   1680
         Width           =   2070
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "��������A������ҳ������"
         Height          =   180
         Index           =   0
         Left            =   120
         TabIndex        =   72
         Top             =   240
         Width           =   2070
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "163�����֤������"
      Height          =   4215
      Left            =   6960
      TabIndex        =   49
      Top             =   480
      Visible         =   0   'False
      Width           =   6735
      Begin VB.PictureBox Picture23 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   240
         ScaleHeight     =   255
         ScaleWidth      =   6315
         TabIndex        =   143
         Top             =   3840
         Width           =   6315
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(����������õ���������)"
            Height          =   255
            Index           =   0
            Left            =   3600
            TabIndex        =   145
            Top             =   0
            Width           =   3135
         End
         Begin VB.OptionButton new163passrule 
            Caption         =   "��(ʹ�ò������ϲ�������������)"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   144
            Top             =   0
            Width           =   3615
         End
      End
      Begin VB.TextBox Text1 
         Height          =   1695
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   68
         Text            =   "sys.frx":414A
         Top             =   1680
         Width           =   6255
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   2
         Left            =   960
         TabIndex        =   53
         Text            =   "asd"
         Top             =   1080
         Width           =   2655
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   1
         Left            =   960
         TabIndex        =   52
         Text            =   "1530930"
         Top             =   720
         Width           =   2655
      End
      Begin VB.TextBox passcode_text 
         Height          =   270
         Index           =   0
         Left            =   960
         TabIndex        =   51
         Text            =   "wehi"
         Top             =   360
         Width           =   2655
      End
      Begin VB.PictureBox Picture17 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   1215
         Left            =   3720
         ScaleHeight     =   1215
         ScaleWidth      =   2775
         TabIndex        =   57
         Top             =   360
         Width           =   2775
         Begin VB.CommandButton Command2 
            Caption         =   "�Զ���д"
            Height          =   975
            Left            =   0
            TabIndex        =   58
            Top             =   0
            Width           =   2775
         End
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ�����163���������������:"
         ForeColor       =   &H00C00000&
         Height          =   180
         Index           =   4
         Left            =   2040
         TabIndex        =   146
         Top             =   3600
         Width           =   2520
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�����������ڲ�����֤��"
         ForeColor       =   &H000000FF&
         Height          =   180
         Index           =   3
         Left            =   960
         TabIndex        =   56
         Top             =   1440
         Width           =   1980
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��  ��:"
         Height          =   180
         Index           =   2
         Left            =   240
         TabIndex        =   55
         Top             =   1125
         Width           =   630
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "���ID:"
         Height          =   180
         Index           =   1
         Left            =   240
         TabIndex        =   54
         Top             =   765
         Width           =   630
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�û���:"
         Height          =   180
         Index           =   0
         Left            =   240
         TabIndex        =   50
         Top             =   405
         Width           =   630
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "��������"
      Height          =   4215
      Left            =   6960
      TabIndex        =   0
      Top             =   5520
      Visible         =   0   'False
      Width           =   6735
      Begin VB.PictureBox Picture12 
         BorderStyle     =   0  'None
         Height          =   315
         Left            =   3480
         ScaleHeight     =   315
         ScaleWidth      =   2655
         TabIndex        =   103
         Top             =   1320
         Width           =   2655
         Begin VB.OptionButton scriptOP 
            Caption         =   "�ر�"
            Height          =   255
            Index           =   2
            Left            =   1785
            TabIndex        =   106
            ToolTipText     =   "�ر��ⲿ�ű�ִ��"
            Top             =   20
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "����"
            Height          =   255
            Index           =   1
            Left            =   915
            TabIndex        =   105
            ToolTipText     =   "����ִ���ⲿ�ű�"
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton scriptOP 
            Caption         =   "�Ӻ�"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   104
            ToolTipText     =   "�ڳ���������Ƿ�Ϊ163����ִ��"
            Top             =   20
            Width           =   735
         End
      End
      Begin VB.TextBox fix_name_Text 
         Height          =   270
         Left            =   120
         MaxLength       =   15
         TabIndex        =   46
         Top             =   3150
         Width           =   2655
      End
      Begin VB.ComboBox Combo_rar_name 
         Height          =   300
         ItemData        =   "sys.frx":423F
         Left            =   120
         List            =   "sys.frx":4241
         Style           =   2  'Dropdown List
         TabIndex        =   45
         Top             =   3480
         Width           =   1335
      End
      Begin VB.ComboBox Combo_lst 
         Height          =   300
         ItemData        =   "sys.frx":4243
         Left            =   3480
         List            =   "sys.frx":4250
         Style           =   2  'Dropdown List
         TabIndex        =   44
         Top             =   2040
         Width           =   2655
      End
      Begin VB.PictureBox Picture11 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   5760
         ScaleHeight     =   255
         ScaleWidth      =   555
         TabIndex        =   41
         Top             =   600
         Width           =   555
         Begin VB.CommandButton def_path_com 
            Caption         =   "..."
            Enabled         =   0   'False
            Height          =   255
            Left            =   0
            TabIndex        =   42
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture4 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   4800
         ScaleHeight     =   255
         ScaleWidth      =   1515
         TabIndex        =   38
         Top             =   330
         Width           =   1515
         Begin VB.OptionButton def_path 
            Caption         =   "����"
            Height          =   255
            Index           =   1
            Left            =   840
            TabIndex        =   40
            Top             =   0
            Width           =   735
         End
         Begin VB.OptionButton def_path 
            Caption         =   "�ر�"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   39
            Top             =   0
            Width           =   735
         End
      End
      Begin VB.TextBox def_path_txt 
         Enabled         =   0   'False
         Height          =   270
         Left            =   3510
         TabIndex        =   37
         Top             =   600
         Width           =   2175
      End
      Begin VB.ComboBox Combo_rar 
         Height          =   300
         ItemData        =   "sys.frx":4290
         Left            =   960
         List            =   "sys.frx":429D
         Style           =   2  'Dropdown List
         TabIndex        =   35
         Top             =   2820
         Width           =   1815
      End
      Begin VB.VScrollBar VS_timeout 
         Height          =   280
         Left            =   1560
         Max             =   10
         Min             =   255
         TabIndex        =   29
         Top             =   1845
         Value           =   10
         Width           =   375
      End
      Begin VB.VScrollBar VS_retry 
         Height          =   280
         Left            =   1560
         Max             =   0
         Min             =   255
         TabIndex        =   28
         Top             =   2205
         Width           =   375
      End
      Begin VB.PictureBox Picture1 
         BorderStyle     =   0  'None
         Height          =   975
         Left            =   120
         ScaleHeight     =   975
         ScaleWidth      =   2715
         TabIndex        =   1
         ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
         Top             =   600
         Width           =   2715
         Begin VB.HScrollBar downHS 
            Height          =   220
            Left            =   720
            Max             =   400
            Min             =   1
            TabIndex        =   9
            Top             =   720
            Value           =   4
            Width           =   1935
         End
         Begin VB.TextBox downText 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "����"
               Size            =   7.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   0
            TabIndex        =   8
            Text            =   "2KB"
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   720
            Width           =   735
         End
         Begin VB.OptionButton downOp 
            Caption         =   "�Զ���"
            Height          =   255
            Index           =   5
            Left            =   0
            TabIndex        =   7
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   480
            Width           =   975
         End
         Begin VB.OptionButton downOp 
            Caption         =   "10240Byte"
            Height          =   255
            Index           =   4
            Left            =   1440
            TabIndex        =   6
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   480
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "5120 Byte"
            Height          =   255
            Index           =   3
            Left            =   1440
            TabIndex        =   5
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   240
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "2048 Byte"
            Height          =   255
            Index           =   2
            Left            =   0
            TabIndex        =   4
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   240
            Width           =   1215
         End
         Begin VB.OptionButton downOp 
            Caption         =   "1024 Byte"
            Height          =   255
            Index           =   1
            Left            =   1440
            TabIndex        =   3
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1335
         End
         Begin VB.OptionButton downOp 
            Caption         =   "512  Byte"
            Height          =   255
            Index           =   0
            Left            =   0
            TabIndex        =   2
            ToolTipText     =   "�����С�������ٶ���һ����ϵ(�������趨̫��)"
            Top             =   0
            Width           =   1215
         End
      End
      Begin VB.PictureBox Picture15 
         BorderStyle     =   0  'None
         Height          =   615
         Left            =   1320
         ScaleHeight     =   615
         ScaleWidth      =   1500
         TabIndex        =   47
         Top             =   3360
         Width           =   1500
         Begin VB.CommandButton Command1 
            Caption         =   "��Ӻ�׺"
            Height          =   300
            Left            =   240
            TabIndex        =   48
            Top             =   120
            Width           =   1215
         End
      End
      Begin VB.Label Combo_lst1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   $"sys.frx":42BF
         ForeColor       =   &H000000FF&
         Height          =   360
         Left            =   3480
         TabIndex        =   131
         Top             =   2400
         Width           =   2610
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "���������С��"
         Height          =   180
         Left            =   120
         TabIndex        =   127
         Top             =   360
         Width           =   1260
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�ⲿ�ű��������ã�"
         Height          =   180
         Index           =   6
         Left            =   3480
         TabIndex        =   107
         ToolTipText     =   "�밴�û���Ҫ�趨"
         Top             =   1080
         Width           =   1620
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�����б��ʽ��"
         Height          =   180
         Index           =   7
         Left            =   3480
         TabIndex        =   43
         ToolTipText     =   "����ʹ��LST��ʽ"
         Top             =   1800
         Width           =   1260
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����Ĭ��·����"
         Height          =   180
         Index           =   5
         Left            =   3480
         TabIndex        =   36
         ToolTipText     =   "�����Զ�������"
         Top             =   360
         Width           =   1260
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "αͼ��飺"
         Height          =   180
         Index           =   3
         Left            =   120
         TabIndex        =   34
         ToolTipText     =   "����ʹ���Զ�����"
         Top             =   2880
         Width           =   900
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��ʱ(10-255��)��"
         Height          =   180
         Index           =   1
         Left            =   120
         TabIndex        =   33
         ToolTipText     =   "Ĭ��Ϊ15��"
         Top             =   1920
         Width           =   1440
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����( 0-255��)��"
         Height          =   180
         Index           =   2
         Left            =   120
         TabIndex        =   32
         ToolTipText     =   "Ĭ��Ϊ20��"
         Top             =   2280
         Width           =   1440
      End
      Begin VB.Label LB_timeout 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "30��"
         Height          =   180
         Left            =   2040
         TabIndex        =   31
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   1920
         Width           =   360
      End
      Begin VB.Label LB_retry 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "��������"
         Height          =   180
         Left            =   2040
         TabIndex        =   30
         ToolTipText     =   "���ض�������ѡ��(��)"
         Top             =   2280
         Width           =   720
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "�����������"
      Height          =   4215
      Left            =   120
      TabIndex        =   10
      Top             =   5520
      Visible         =   0   'False
      Width           =   6735
      Begin VB.Frame Frame7 
         Height          =   1095
         Left            =   240
         TabIndex        =   133
         Top             =   2640
         Width           =   6255
         Begin VB.PictureBox Picture10 
            BorderStyle     =   0  'None
            Height          =   255
            Left            =   3360
            ScaleHeight     =   255
            ScaleWidth      =   1395
            TabIndex        =   138
            Top             =   600
            Width           =   1395
            Begin VB.OptionButton ie_window 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   140
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton ie_window 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   139
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
            TabIndex        =   135
            Top             =   600
            Width           =   1395
            Begin VB.OptionButton ox163_window 
               Caption         =   "��"
               Height          =   255
               Index           =   1
               Left            =   0
               TabIndex        =   137
               Top             =   0
               Width           =   495
            End
            Begin VB.OptionButton ox163_window 
               Caption         =   "��"
               Height          =   255
               Index           =   0
               Left            =   840
               TabIndex        =   136
               Top             =   0
               Width           =   495
            End
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "�������������"
            ForeColor       =   &H00C00000&
            Height          =   180
            Index           =   15
            Left            =   120
            TabIndex        =   142
            ToolTipText     =   "����ض���վ�뽨��ѡ��(��)"
            Top             =   0
            Width           =   1260
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ���ֹ����������¿����ڣ�"
            Height          =   180
            Index           =   0
            Left            =   3360
            TabIndex        =   141
            ToolTipText     =   "���ض�������ѡ��(��)"
            Top             =   360
            Width           =   2520
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            BackStyle       =   0  'Transparent
            Caption         =   "�Ƿ���OX163���´��ڣ�"
            Height          =   180
            Index           =   14
            Left            =   360
            TabIndex        =   134
            ToolTipText     =   "����ض���վ�뽨��ѡ��(��)"
            Top             =   360
            Width           =   2070
         End
      End
      Begin VB.PictureBox Picture20 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   108
         Top             =   1320
         Width           =   1395
         Begin VB.OptionButton set_url_folder 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   110
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_url_folder 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   109
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture19 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   64
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton set_checkall 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   66
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_checkall 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   65
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture18 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   3600
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   60
         Top             =   600
         Width           =   1395
         Begin VB.OptionButton set_sbar 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   62
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton set_sbar 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   61
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture6 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   24
         Top             =   2040
         Width           =   1395
         Begin VB.OptionButton listOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   26
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton listOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   25
            Top             =   0
            Width           =   495
         End
      End
      Begin VB.PictureBox Picture5 
         BorderStyle     =   0  'None
         Height          =   255
         Left            =   120
         ScaleHeight     =   255
         ScaleWidth      =   1395
         TabIndex        =   21
         Top             =   1320
         Width           =   1395
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   1
            Left            =   0
            TabIndex        =   23
            Top             =   0
            Width           =   495
         End
         Begin VB.OptionButton quitOp 
            Caption         =   "��"
            Height          =   255
            Index           =   0
            Left            =   840
            TabIndex        =   22
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
         Begin VB.CommandButton Command4 
            Caption         =   "���̼�����"
            Height          =   300
            Left            =   1440
            TabIndex        =   27
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
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ʱ���Ƿ�����ҳ��ַ��ΪĿ¼��"
         Height          =   180
         Index           =   13
         Left            =   3600
         TabIndex        =   102
         ToolTipText     =   "���磺C:\163blog.vbs_vbscript_GB2312\http������blog.163.com��aaa��\��"
         Top             =   1080
         Width           =   2880
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "�Ƿ��Զ�ȫ����Ƕ�ѡ��"
         Height          =   180
         Index           =   12
         Left            =   3600
         TabIndex        =   63
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
         TabIndex        =   59
         ToolTipText     =   "��Ϣ��������ʾOX163��������Ϣ"
         Top             =   360
         Width           =   1440
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ҳ��ʱ����ʾ�б��嵥��"
         Height          =   180
         Left            =   120
         TabIndex        =   19
         ToolTipText     =   "����ѡ��(��)�ӿ�ˢ���ٶ�"
         Top             =   1800
         Width           =   2340
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "����ִ��ʱ�����˳�ѯ�ʣ�"
         Height          =   180
         Left            =   120
         TabIndex        =   18
         ToolTipText     =   "����ѡ��(��)��ֹ�����"
         Top             =   1080
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
      Caption         =   "ȫ����ԭĬ������"
      Height          =   465
      Index           =   0
      Left            =   2160
      TabIndex        =   20
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton sys_no 
      Caption         =   "ȡ��(&C)"
      Height          =   465
      Left            =   6120
      TabIndex        =   13
      Top             =   4920
      Width           =   975
   End
   Begin VB.CommandButton sys_rec 
      Caption         =   "ȫ����ԭ�ϴ�����"
      Height          =   465
      Index           =   0
      Left            =   120
      TabIndex        =   12
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton sys_yes 
      Caption         =   "ȷ��(&A)"
      Height          =   465
      Left            =   4440
      TabIndex        =   11
      Top             =   4920
      Width           =   1575
   End
   Begin MSComctlLib.TabStrip TabStrip 
      Height          =   4695
      Left            =   120
      TabIndex        =   67
      Top             =   120
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8281
      MultiRow        =   -1  'True
      HotTracking     =   -1  'True
      TabMinWidth     =   353
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   6
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "����"
            Object.Tag             =   "TabStrip_1"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "����"
            Object.Tag             =   "TabStrip_2"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "����"
            Object.Tag             =   "TabStrip_3"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "����"
            Object.Tag             =   "TabStrip_4"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab5 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "163����"
            Object.Tag             =   "TabStrip_5"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab6 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "�޸�ϵͳ"
            Object.Tag             =   "TabStrip_6"
            ImageVarType    =   2
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "sys"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo_lst_Click()
'lst (for flashget)
'htm(for All Tools)
'txt & bat(for All)
If Combo_lst.ListIndex = 0 Then
Combo_lst1.Caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
ElseIf Combo_lst.ListIndex = 1 Then
Combo_lst1.Caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
ElseIf Combo_lst.ListIndex = 2 Then
Combo_lst1.Caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
End If
End Sub

Private Sub Combo_lst_KeyPress(KeyAscii As Integer)
'lst (for flashget)
'htm(for All Tools)
'txt & bat(for All)
If Combo_lst.ListIndex = 0 Then
Combo_lst1.Caption = "���������Զ�������LST�����б�" & vbCrLf & "������flashget1.96�Ⱦ���汾"
ElseIf Combo_lst.ListIndex = 1 Then
Combo_lst1.Caption = "��������ȫ��������Ϣ��htmҳ��" & vbCrLf & "����ֱ�ӵ���Ѹ�׵��������"
ElseIf Combo_lst.ListIndex = 2 Then
Combo_lst1.Caption = "����һ���������ص�ַ��txt�ĵ�" & vbCrLf & "ͬʱ����һ��bat�ĵ�����������"
End If
End Sub



Private Sub Combo_rar_name_Click()
If Combo_rar_name.ListIndex > 0 Then
fix_name_Text.Text = Combo_rar_name.List(Combo_rar_name.ListIndex)
Command1.Caption = "�޸ĺ�׺"
Else
fix_name_Text.Text = ""
Command1.Caption = "��Ӻ�׺"
End If
End Sub


Private Sub Command2_Click()
On Error Resume Next
sys.Enabled = False
Command2.Caption = "���ڲ���,��ȴ�..."
Dim html, split_html
html = Form1.update.OpenURL("http://www.shanhaijing.net/163/passcode_inf.txt?ntime=" & CDbl(Now()))
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
Command2.Caption = "�Զ���д"
sys.Enabled = True
End Sub



Private Sub Command4_Click()
Form1.Timer3.Enabled = True
Command4.Caption = "�ٴμ�����"
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
    def_path_txt = GetShortName(Folder_path)
End If
End Sub

Private Sub downHS_Change()
downText.Text = downHS.Value / 2 & "KB"
downOp(5).Value = True
End Sub

Private Sub fix_name_Text_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Command1_Click
End If
End Sub



Private Sub Form_Load()
On Error Resume Next
sys.Width = 7320
sys.Height = 5955
Frame1.Top = 480
Frame1.Left = 240
Frame2.Top = 480
Frame2.Left = 240
Frame3.Top = 480
Frame3.Left = 240
Frame4.Top = 480
Frame4.Left = 240
Frame5.Top = 480
Frame5.Left = 240
Frame6.Top = 480
Frame6.Left = 240
TabStrip_Click
Form1.always_on_top False
'Dim flags As Integer
'flags = SWP_NOSIZE Or SWP_NOMOVE Or SWP_SHOWWINDOW
'SetWindowPos Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, flags
Form1.Enabled = False
sys_def
laod_ini
End Sub

Private Sub Form_Unload(Cancel As Integer)
If Form1.WindowState = 0 Then Form1.always_on_top sysSet.always_top
Form1.Enabled = True
End Sub

Private Sub list_copy_Click(Index As Integer)
If list_copy(1).Value = True Then
ubb_copy(0).Value = True
Else
ubb_copy(1).Value = True
End If
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

Private Sub TabStrip_Click()
Frame1.Visible = False
Frame2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False
Frame6.Visible = False
Select Case TabStrip.SelectedItem.Tag
Case "TabStrip_1"
Frame1.Visible = True
Case "TabStrip_2"
Frame2.Visible = True
Case "TabStrip_3"
Frame3.Visible = True
Case "TabStrip_4"
Frame4.Visible = True
Case "TabStrip_5"
Frame5.Visible = True
Case "TabStrip_6"
Frame6.Visible = True
End Select
End Sub

Private Sub Timer1_Timer()
Timer1.Enabled = False
End
End Sub

Private Sub ubb_copy_Click(Index As Integer)
If ubb_copy(1).Value = True Then
list_copy(0).Value = True
Else
list_copy(1).Value = True
End If
End Sub

Private Sub sys_def_com_Click(Index As Integer)
sys_def
End Sub

Private Sub sys_def()
downOp(3).Value = True
autoOp(1).Value = True
quitOp(1).Value = True
listOp(0).Value = True
saveOp(1).Value = True
changepsw(1).Value = True
askfloder(1).Value = True
ie_window(1).Value = True
ox163_window(1).Value = True
def_path(0).Value = True
VS_timeout.Value = 30
VS_retry.Value = 5
Combo_rar.ListIndex = 1
Combo_lst.ListIndex = 1
fix_name_list "RAR|ZIP|7Z|PNG|BMP"
Combo_rar_name.ListIndex = 0
set_tray(1).Value = True
new163passrule(1).Value = True
def_path_txt = ""
scriptOP(0).Value = True
list_copy(1).Value = True
file_compare(1).Value = True
set_sbar(1).Value = True
passcode_text(0) = "wehi"
passcode_text(1) = "1530930"
passcode_text(2) = "asd"
set_checkall(1).Value = True
proxy_txt1(0).Text = ""
proxy_txt1(1).Text = ""
proxy_txt1(2).Text = ""
proxy_txt2(0).Text = ""
proxy_txt2(1).Text = ""
proxy_txt2(2).Text = ""
ProxyComb(0).ListIndex = 0
ProxyComb(1).ListIndex = 0
set_url_folder(0).Value = True
End Sub

Private Sub sys_no_Click()
Unload sys
End Sub

Private Sub laod_ini()
Select Case CLng(GetIniStr("maincenter", "downloadblock"))
Case 512
downOp(0).Value = True
Case 1024
downOp(1).Value = True
Case 2048
downOp(2).Value = True
Case 5120
downOp(3).Value = True
Case 10240
downOp(4).Value = True
Case Else
downOp(5).Value = True
If CLng(GetIniStr("maincenter", "downloadblock")) <= 204800 Then
downHS.Value = Int(CLng(GetIniStr("maincenter", "downloadblock")) / 512)
Else
downHS.Value = 400
End If
End Select

If CInt(GetIniStr("maincenter", "time_out")) <= 200 And CInt(GetIniStr("maincenter", "time_out")) >= 10 Then
VS_timeout.Value = CInt(GetIniStr("maincenter", "time_out"))
Else
VS_timeout.Value = 30
End If

If CInt(GetIniStr("maincenter", "retry_times")) <= 255 And CInt(GetIniStr("maincenter", "time_out")) >= 0 Then
VS_retry.Value = CInt(GetIniStr("maincenter", "retry_times"))
Else
VS_retry.Value = 20
End If

passcode_text(0) = GetIniStr("maincenter", "new163passcode_user")
passcode_text(1) = GetIniStr("maincenter", "new163passcode_album")
passcode_text(2) = GetIniStr("maincenter", "new163passcode_pw")

If passcode_text(0) = "" Or passcode_text(1) = "" Or passcode_text(2) = "" Then
passcode_text(0) = "wehi"
passcode_text(1) = "1530930"
passcode_text(2) = "asd"
End If

If GetIniTF("maincenter", "autocheck") = False Then autoOp(0).Value = True
If GetIniTF("maincenter", "askquit") = False Then quitOp(0).Value = True
If GetIniTF("maincenter", "listshow") = True Then listOp(1).Value = True
If GetIniTF("maincenter", "savedef") = False Then saveOp(0).Value = True
If GetIniTF("maincenter", "openfloder") = False Then askfloder(0).Value = True
If GetIniTF("maincenter", "change_psw") = False Then changepsw(0).Value = True
If GetIniTF("maincenter", "new_ie_win") = False Then ie_window(0).Value = True
If GetIniTF("maincenter", "ox163_ie_win") = False Then ox163_window(0).Value = True
If GetIniTF("maincenter", "sysTray") = False Then set_tray(0).Value = True

If GetIniTF("maincenter", "new163pass_rules") = False Then new163passrule(0).Value = True


If GetIniTF("maincenter", "list_copy") = False Then list_copy(0).Value = True

If CInt(GetIniStr("maincenter", "file_compare")) = 0 Then
file_compare(0).Value = True
ElseIf CInt(GetIniStr("maincenter", "file_compare")) = 2 Then
file_compare(2).Value = True
Else
file_compare(1).Value = True
End If

If GetIniTF("maincenter", "bottom_StatusBar") = False Then set_sbar(0).Value = True

If GetIniTF("maincenter", "url_folder") = True Then set_url_folder(1).Value = True

If GetIniTF("maincenter", "def_path_tf") = True Then def_path(1).Value = True
def_path_txt = GetIniStr("maincenter", "def_path")

If CByte(GetIniStr("maincenter", "list_type")) >= 0 And CByte(GetIniStr("maincenter", "list_type")) < 3 Then
Combo_lst.ListIndex = CByte(GetIniStr("maincenter", "list_type"))
End If

If CByte(GetIniStr("maincenter", "fix_rar")) >= 0 And CByte(GetIniStr("maincenter", "fix_rar")) < 3 Then
Combo_rar.ListIndex = CByte(GetIniStr("maincenter", "fix_rar"))
End If

fix_name_list Trim(GetIniStr("maincenter", "fix_rar_name"))

Select Case GetIniStr("maincenter", "include_script")
Case "first"
scriptOP(1).Value = True
Case "close"
scriptOP(2).Value = True
Case Else
scriptOP(0).Value = True
End Select

If GetIniTF("maincenter", "check_all") = False Then set_checkall(0).Value = True


'proxy
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

Private Function is_fileName(ByVal file_name As String) As Boolean
is_fileName = True
If InStr(file_name, Chr(92)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(47)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(34)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(63)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(58)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(42)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(60)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(62)) > 0 Then is_fileName = False: Exit Function
If InStr(file_name, Chr(124)) > 0 Then is_fileName = False: Exit Function

If Left(rename_str, 1) = "." Then is_fileName = False: Exit Function
If Right(rename_str, 1) = "." Then is_fileName = False: Exit Function
End Function


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
sys_def
laod_ini
End Sub

Private Sub sys_yes_Click()
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
WriteIniStr "maincenter", "downloadblock", "512"
Case 1
WriteIniStr "maincenter", "downloadblock", "1024"
Case 2
WriteIniStr "maincenter", "downloadblock", "2048"
Case 3
WriteIniStr "maincenter", "downloadblock", "5120"
Case 4
WriteIniStr "maincenter", "downloadblock", "10240"
Case Else
Dim block As Long
block = downHS.Value
WriteIniStr "maincenter", "downloadblock", block * 512
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

If autoOp(1).Value = True Then
WriteIniTF "maincenter", "autocheck", True
Else
WriteIniTF "maincenter", "autocheck", False
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


'���������趨
sysSet.ver = CInt(GetIniStr("maincenter", "ver"))
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
    Label1.Caption = "׼��OX163..." & vbCrLf & "    �������·��"
        If Mid$(sysSet.def_path, 2, 2) <> ":\" Then GoTo reset_path
        If Right(sysSet.def_path, 1) = "\" Then sysSet.def_path = Mid$(sysSet.def_path, 1, Len(sysSet.def_path) - 1): WriteIniStr "maincenter", "def_path", sysSet.def_path
    Dim check_path
    check_path = Split(sysSet.def_path, "\")
    
        For i = 0 To UBound(check_path)
            If i > 0 Then
            sysSet.def_path = sysSet.def_path & "\" & check_path(i)
                If Dir(sysSet.def_path, vbDirectory) = "" Then
                MkDir sysSet.def_path
                End If
            Else
            sysSet.def_path = check_path(0)
            End If
        Next i
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

Proxy_set

If sysSet.list_type >= 0 And sysSet.list_type <= 2 Then
Form1.list_output.Picture = Form1.output_img(sysSet.list_type).Picture
Form1.user_list_output.Picture = Form1.output_img(sysSet.list_type).Picture
Form1.out_all.Picture = Form1.output_img(sysSet.list_type).Picture
End If

sys.Enabled = True
Unload sys
End Sub


Private Sub VS_retry_Change()
If VS_retry.Value > 0 Then
LB_retry.Caption = VS_retry.Value & "��"
Else
LB_retry.Caption = "��������"
End If
End Sub

Private Sub VS_timeout_Change()
LB_timeout.Caption = VS_timeout.Value & "��"
End Sub

'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------
'------------------------------------------------------------------------------------------

Private Sub Com3_Click()
On Error Resume Next
Shell "OX163_SystemRecovery.exe"
End
End Sub

