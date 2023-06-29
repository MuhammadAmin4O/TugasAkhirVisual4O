object Form11: TForm11
  Left = 514
  Top = 157
  Width = 517
  Height = 410
  Caption = 'Daftar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 56
    Top = 48
    Width = 58
    Height = 16
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 56
    Top = 96
    Width = 55
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 56
    Top = 136
    Width = 29
    Height = 16
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 56
    Top = 176
    Width = 36
    Height = 16
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 328
    Top = 248
    Width = 108
    Height = 26
    Caption = 'SUDAH PUNYA AKUN ?'#13#10'LOGIN SEKARANG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = l5Click
  end
  object Edit1: TEdit
    Left = 192
    Top = 48
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 96
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object b2: TButton
    Left = 88
    Top = 240
    Width = 89
    Height = 49
    Caption = 'DAFTAR'
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TButton
    Left = 192
    Top = 240
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = b3Click
  end
  object c1: TComboBox
    Left = 192
    Top = 136
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Siswa'
      'Wali'
      'Ortu')
  end
  object c2: TComboBox
    Left = 192
    Top = 176
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Admin'
      'User')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tugas_visual'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Tugas Akhir visual 2\libmysql.dll'
    Left = 384
    Top = 184
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 384
    Top = 136
  end
end
