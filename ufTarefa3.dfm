object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 03'
  ClientHeight = 387
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 641
    Top = 295
    Width = 40
    Height = 13
    Caption = 'Total R$'
  end
  object Label2: TLabel
    Left = 641
    Top = 336
    Width = 85
    Height = 13
    Caption = 'Total Divis'#245'es  R$'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 754
    Height = 281
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 641
    Top = 311
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 550
    Top = 307
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 641
    Top = 352
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 512
    Top = 354
    Width = 113
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 4
    OnClick = Button2Click
  end
end
