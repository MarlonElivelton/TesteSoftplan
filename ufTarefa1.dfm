object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 01'
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
    Left = 8
    Top = 23
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 224
    Top = 23
    Width = 32
    Height = 13
    Caption = 'Tabela'
  end
  object Label3: TLabel
    Left = 440
    Top = 23
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 8
    Top = 192
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object MemoColunas: TMemo
    Left = 8
    Top = 39
    Width = 185
    Height = 138
    TabOrder = 0
  end
  object MemoTabela: TMemo
    Left = 224
    Top = 39
    Width = 185
    Height = 138
    TabOrder = 1
  end
  object MemoCondicoes: TMemo
    Left = 440
    Top = 39
    Width = 185
    Height = 138
    TabOrder = 2
  end
  object MemoSqlGerado: TMemo
    Left = 8
    Top = 211
    Width = 617
    Height = 138
    TabOrder = 3
  end
  object Button1: TButton
    Left = 648
    Top = 80
    Width = 75
    Height = 44
    Caption = 'Gera SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
  object FDQuery1: TFDQuery
    Left = 437
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 274
    Top = 207
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 82
    Top = 198
  end
end
