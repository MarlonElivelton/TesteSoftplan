object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Teste Softplan'
  ClientHeight = 347
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 16
    object arefas1: TMenuItem
      Caption = 'Tarefas'
      object arefa011: TMenuItem
        Caption = 'Tarefa 01'
        OnClick = Tarefa01Click
      end
      object arefa021: TMenuItem
        Caption = 'Tarefa 02'
        OnClick = Tarefa02Click
      end
      object arefa031: TMenuItem
        Caption = 'Tarefa 03'
        OnClick = Tarefa03Click
      end
    end
  end
end
