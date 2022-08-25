unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfTarefa2 = class(TForm)
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Timer1: TTimer;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  ProgressBar1.Position := 0;
  ProgressBar2.Position := 0;
  Label1.Caption := '';
  Label2.Caption := '';

  for i := 0 to 100 do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Label1.Caption := IntToStr(ProgressBar1.Position) + '%';
    Sleep(100);
  end;

  Sleep(StrToInt(Edit1.Text));

  for i := 0 to 100 do
  begin
    ProgressBar2.Position := ProgressBar2.Position + 1;
    Label2.Caption := IntToStr(ProgressBar1.Position) + '%';
    Sleep(100);
  end;

  ShowMessage('Processo Concluído');

  Close();

end;

procedure TfTarefa2.FormShow(Sender: TObject);
begin
  ProgressBar1.Position := 0;
  ProgressBar2.Position := 0;
  Label1.Caption := '';
  Label2.Caption := '';
end;

end.
