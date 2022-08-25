unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.PGDef,
  FireDAC.Phys, FireDAC.Phys.PG;

type
  TfTarefa1 = class(TForm)
    MemoCondicoes: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MemoSqlGerado: TMemo;
    Button1: TButton;
    MemoTabela: TMemo;
    MemoColunas: TMemo;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;
  vSQLGerado: String;

implementation

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
begin
  if  MemoTabela.Lines.Count > 1 then
    ShowMessage('Favor informar apenas uma tabela.');

  if  MemoTabela.Lines.Count = 0 then
    ShowMessage('Favor informar a tabela.');

  if  MemoTabela.Lines.Count = 1 then
  begin
    vSQLGerado := 'SELECT ' + UpperCase(StringReplace(MemoColunas.Lines.Text, #13, ', ', [rfReplaceall])) + ' FROM ' + MemoTabela.Lines.Text + ' WHERE ' + UpperCase(StringReplace(MemoCondicoes.Lines.Text, #13, ', AND ', [rfReplaceall]));
    MemoSqlGerado.Text := vSQLGerado;
  end;

  FDQuery1.SQL.Add(vSQLGerado);

end;

procedure TfTarefa1.FormShow(Sender: TObject);
begin
  vSQLGerado := '';
  MemoColunas.Lines.Text := '';
  MemoTabela.Lines.Text := '';
  MemoCondicoes.Lines.Text := '';
  MemoSqlGerado.Lines.Text := '';
end;

end.
