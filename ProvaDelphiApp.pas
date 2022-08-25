unit ProvaDelphiApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    arefas1: TMenuItem;
    arefa011: TMenuItem;
    arefa021: TMenuItem;
    arefa031: TMenuItem;
    procedure Tarefa02Click(Sender: TObject);
    procedure Tarefa03Click(Sender: TObject);
    procedure Tarefa01Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ufTarefa2, ufTarefa3, ufTarefa1;

procedure TForm1.Tarefa03Click(Sender: TObject);
begin
  ufTarefa3.fTarefa3.Show;
end;

procedure TForm1.Tarefa01Click(Sender: TObject);
begin
  ufTarefa1.fTarefa1.Show;
end;

procedure TForm1.Tarefa02Click(Sender: TObject);
begin
  ufTarefa2.fTarefa2.Show;

end;

end.
