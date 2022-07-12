unit uDevolucoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFormDevolucoes = class(TForm)
    pnlBottom: TPanel;
    btnDevolver: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    grupoDevolucao: TGroupBox;
    Label3: TLabel;
    gridLocacoes: TDBGrid;
    queryLocacoes: TFDQuery;
    dsLocacoes: TDataSource;
    queryLocacoescodigolocacao: TIntegerField;
    queryLocacoesdataretirada: TDateField;
    queryLocacoesdatadevolucao: TDateField;
    queryLocacoescodigolivro: TIntegerField;
    queryLocacoescodigolocatario: TIntegerField;
    queryLivros: TFDQuery;
    dsLivros: TDataSource;
    queryLocatarios: TFDQuery;
    dsLocatarios: TDataSource;
    queryLocacoeslook_livro: TStringField;
    queryLocacoeslook_locatario: TStringField;
    queryLivroscodigolivro: TIntegerField;
    queryLivrosnome: TStringField;
    queryLivroseditora: TStringField;
    queryLivrosautor: TStringField;
    queryLocatarioscodigolocatario: TIntegerField;
    queryLocatariosnome: TStringField;
    queryLocatarioscelular: TStringField;
    queryLocatariosrua: TStringField;
    queryLocatariosbairro: TStringField;
    queryLocatarioscidade: TStringField;
    Label1: TLabel;
    editDataHoje: TEdit;
    Label2: TLabel;
    diasAtraso: TLabel;
    Label4: TLabel;
    dbCodigoLocacao: TDBText;
    dbDataDevolucao: TDBText;
    procedure editDataHojeKeyPress(Sender: TObject; var Key: Char);
    procedure editDataHojeChange(Sender: TObject);
    procedure gridLocacoesCellClick(Column: TColumn);
    procedure btnDevolverClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Mascara(edt: String; str: String):String;
    procedure Controle(acao: Boolean);
  end;

var
  FormDevolucoes: TFormDevolucoes;

implementation

{$R *.dfm}

uses uDataModule;

procedure TFormDevolucoes.btnCancelarClick(Sender: TObject);
begin
  Controle(true);
end;

procedure TFormDevolucoes.btnConfirmarClick(Sender: TObject);
var dataDevolucao: string; dataHoje: string;
    res: integer; a: integer; b: integer;
begin
  a := 0; b :=0;

  if (dbDataDevolucao.Caption <> '') then
    dataDevolucao := Copy(dbDataDevolucao.Caption, 0, 2)
  else
    ShowMessage('Favor Selecionar a Data de Devolução!!!');

  if (editDataHoje.Text <> '') then
  begin
    a := StrToInt(dataDevolucao);
    b := StrToInt(Copy(editDataHoje.Text, 0, 2));
  end
  else
  begin
    showMessage('Favor preencher o campo Data de Hoje!!!');
    editDataHoje.SetFocus;
  end;

  res := a - b;

  if (res < 0) then
  begin
    res := res * -1;
    diasAtraso.Caption := IntToStr(res);
  end;
  if (res = 0) then
    diasAtraso.Caption := '0';

  Controle(true);
end;

procedure TFormDevolucoes.btnDevolverClick(Sender: TObject);
begin
  Controle(false);
  editDataHoje.SetFocus;
end;

procedure TFormDevolucoes.btnSairClick(Sender: TObject);
begin
  FormDevolucoes.Close;
end;

procedure TFormDevolucoes.editDataHojeChange(Sender: TObject);
begin
  editDataHoje.Text := Mascara(editDataHoje.Text, '99/99/9999');
  editDataHoje.SelStart := Length(editDataHoje.Text);
end;

procedure TFormDevolucoes.editDataHojeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8]) then Abort;
end;

procedure TFormDevolucoes.gridLocacoesCellClick(Column: TColumn);
begin
  dbCodigoLocacao.Caption := gridLocacoes.Fields[0].Value;
  dbDataDevolucao.Caption := gridLocacoes.Fields[2].Value;
end;

function TFormDevolucoes.Mascara(edt: string; str: string): string;
var i: integer;
begin
  for i := 1 to Length(edt) do
  begin
    if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt)=Length(str)+1) then
      delete(edt,i,1);
    if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
      insert(str[i],edt, i);
  end;
  Result := edt;
end;

procedure TFormDevolucoes.Controle(acao: Boolean);
begin
  btnDevolver.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  grupoDevolucao.Enabled := not acao;
end;

end.
