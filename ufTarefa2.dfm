object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 'Tarefa 02'
  ClientHeight = 387
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 415
    Top = 154
    Width = 63
    Height = 13
    Caption = 'Porcentagem'
  end
  object Label2: TLabel
    Left = 415
    Top = 204
    Width = 63
    Height = 13
    Caption = 'Porcentagem'
  end
  object Label3: TLabel
    Left = 24
    Top = 143
    Width = 79
    Height = 13
    Caption = 'Tempo Intervalo'
  end
  object ProgressBar1: TProgressBar
    Left = 258
    Top = 136
    Width = 385
    Height = 17
    TabOrder = 0
  end
  object ProgressBar2: TProgressBar
    Left = 258
    Top = 186
    Width = 385
    Height = 17
    TabOrder = 1
  end
  object Button1: TButton
    Left = 151
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Carregar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 162
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    Left = 288
    Top = 16
  end
end
