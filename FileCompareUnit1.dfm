object Form1: TForm1
  Left = 180
  Top = 145
  Caption = 'File Comparator'
  ClientHeight = 670
  ClientWidth = 952
  Color = clBtnFace
  Constraints.MinHeight = 160
  Constraints.MinWidth = 970
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    952
    670)
  PixelsPerInch = 120
  TextHeight = 16
  object Memo1: TMemo
    Left = 7
    Top = 39
    Width = 937
    Height = 626
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
    ExplicitWidth = 1105
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 90
    Height = 25
    Caption = 'Scan Folder'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Find Duplicates'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 447
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Find Empty'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 528
    Top = 8
    Width = 153
    Height = 25
    Caption = 'Find Unreadables (.JPG)'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 815
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Delete Duplicates'
    TabOrder = 5
    OnClick = Button5Click
  end
  object CheckBox1: TCheckBox
    Left = 215
    Top = 8
    Width = 226
    Height = 25
    Caption = 'Strict Duplicates (FileNames Match)'
    TabOrder = 6
  end
end
