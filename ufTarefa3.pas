unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Data.DB, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TfTarefa3 = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
var
  i: Integer;
  vLinhaGrid: Integer;
  vObterTotalValor: Integer;
  vValorTotal : String;
begin
  vLinhaGrid := 0;
  vObterTotalValor := 0;

  for I := 0 to 9 do
  begin
  vLinhaGrid := vLinhaGrid + 1;

  vValorTotal := StringGrid1.Cells[2,vLinhaGrid];

  vObterTotalValor := vObterTotalValor + StrToInt(FormatFloat('#,,0', StrtoFloat(vValorTotal)));
  end;

  Edit1.Text := IntToStr(vObterTotalValor) + ',00';
end;

procedure TfTarefa3.Button2Click(Sender: TObject);
var
  i: Integer;
  vLinhaGridAnterior, vLinhaGridDepois: Integer;
  vValorLinhaAnterior, vValorLinhaDepois: Integer;
  vValorTotalDivisao, vValorDivisao: Real;
  vValor01, vValor02: String;

begin
  vLinhaGridAnterior := 0;
  vLinhaGridDepois := 1;
  vValorLinhaAnterior := 0;
  vValorLinhaDepois := 0;
  vValorTotalDivisao := 0;
  vValorDivisao := 0;

  for I := 0 to 9 do
  begin
  vLinhaGridAnterior := vLinhaGridAnterior + 1;
  vLinhaGridDepois := vLinhaGridDepois + 1;
  vValor01 := StringGrid1.Cells[2,vLinhaGridAnterior];
  vValor02 := StringGrid1.Cells[2,vLinhaGridDepois];
  vValorLinhaAnterior := StrToInt(FormatFloat('#,,0', StrtoFloat(vValor01)));
  vValorLinhaDepois := StrToInt(FormatFloat('#,,0', StrtoFloat(vValor02)));

  vValorDivisao := vValorLinhaDepois / vValorLinhaAnterior;

  vValorTotalDivisao := vValorTotalDivisao + vValorDivisao;
  end;

  Edit2.Text := FloatToStr(vValorTotalDivisao);
  Edit2.Text := FormatFloat('#,,0.00', StrtoFloat(edit2.Text))

end;

procedure TfTarefa3.FormShow(Sender: TObject);
var
  i: Integer;
  vLinhaGrid: Integer;
  vIdProjeto: Integer;
  vNumeroProjeto: Extended;
  vValorProjeto: Extended;

begin
  StringGrid1.ColCount := 3;
  StringGrid1.RowCount := 11;
  StringGrid1.FixedCols := 0;
  StringGrid1.FixedRows := 1;

  StringGrid1.ColWidths[0] := 170;
  StringGrid1.ColWidths[1] := 400;
  StringGrid1.ColWidths[2] := 175;

  StringGrid1.Cells[0,0] := 'IdProjeto';
  StringGrid1.Cells[1,0] := 'NomeProjeto';
  StringGrid1.Cells[2,0] := 'Valor';

  vLinhaGrid := 0;
  vIdProjeto := 0;
  vValorProjeto := 0;

  for I := 0 to 10 do
  begin
  vLinhaGrid := vLinhaGrid + 1;
  vIdProjeto := vIdProjeto + 1;
  vNumeroProjeto := Random(100);
  vValorProjeto :=  Random(1000);

  StringGrid1.Cells[0,vLinhaGrid] := IntToStr(vIdProjeto);
  StringGrid1.Cells[1,vLinhaGrid] := 'Projeto ' + FloatToStr(vNumeroProjeto);
  StringGrid1.Cells[2,vLinhaGrid] := FloatToStr(vValorProjeto);
  StringGrid1.Cells[2,vLinhaGrid] := FormatFloat('#,,0.00', StrtoFloat(StringGrid1.Cells[2,vLinhaGrid]));
  end;

  Edit1.Text := '';
  Edit2.Text := '';

end;

end.
