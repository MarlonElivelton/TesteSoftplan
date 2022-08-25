program Project1;

uses
  Vcl.Forms,
  ProvaDelphiApp in 'ProvaDelphiApp.pas' {Form1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfTarefa2, fTarefa2);
  Application.CreateForm(TfTarefa3, fTarefa3);
  Application.CreateForm(TfTarefa1, fTarefa1);
  Application.Run;
  
end.
