object frmQ2: TfrmQ2
  Left = 229
  Top = 180
  Caption = 'Question 2 - OOP'
  ClientHeight = 461
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  DesignSize = (
    767
    461)
  PixelsPerInch = 96
  TextHeight = 18
  object lblHeading: TLabel
    Left = 79
    Top = 87
    Width = 87
    Height = 18
    Caption = 'Select a star'
  end
  object imgQ2: TImage
    Left = 407
    Top = 94
    Width = 268
    Height = 198
    Stretch = True
  end
  object lblQstNum: TLabel
    Left = 31
    Top = 23
    Width = 91
    Height = 32
    Caption = 'STARS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bmbClose: TBitBtn
    Left = 575
    Top = 409
    Width = 150
    Height = 45
    Anchors = [akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Kind = bkClose
    ParentFont = False
    TabOrder = 0
  end
  object btnQ2_2_1: TButton
    Left = 110
    Top = 324
    Width = 186
    Height = 45
    Caption = '2.2.1 - Instantiate object'
    TabOrder = 1
    OnClick = btnQ2_2_1Click
  end
  object redOutput: TRichEdit
    Left = 31
    Top = 139
    Width = 326
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cmbStar: TComboBox
    Left = 183
    Top = 84
    Width = 113
    Height = 26
    Style = csDropDownList
    TabOrder = 3
    OnChange = cmbStarChange
    Items.Strings = (
      'Acrux'
      'Mimosa'
      'Gacrux'
      'Mintaka'
      'Alnilam'
      'Alnitak'
      'Saiph'
      'Bellatrix'
      'Betelgeuse'
      'Shaula'
      'Girtab'
      'Antares'
      'Acrab'
      'Dschubba'
      'Rigil Kent'
      'Hadar'
      'Menkent')
  end
  object pnlButtons: TPanel
    Left = 392
    Top = 313
    Width = 329
    Height = 65
    BevelInner = bvLowered
    BorderWidth = 1
    ParentColor = True
    TabOrder = 4
    object btnQ2_2_2: TButton
      Left = 15
      Top = 12
      Width = 150
      Height = 45
      Caption = '2.2.2 - Display'
      TabOrder = 0
      OnClick = btnQ2_2_2Click
    end
    object btnQ2_2_3: TButton
      Left = 171
      Top = 12
      Width = 150
      Height = 45
      Caption = '2.2.3 - Visiblity'
      TabOrder = 1
      OnClick = btnQ2_2_3Click
    end
  end
end
