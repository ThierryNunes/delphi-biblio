unit uLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFormLocacao = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    queryLocacao: TFDQuery;
    dsLocacao: TDataSource;
    queryLivros: TFDQuery;
    dsLivros: TDataSource;
    queryLocatarios: TFDQuery;
    dslocatarios: TDataSource;
    gridLocacoes: TDBGrid;
    grupoCadastro: TGroupBox;
    dbDataRetirada: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    dbDataDevolucao: TDBEdit;
    Livro: TLabel;
    Label4: TLabel;
    queryLocatarioscodigolocatario: TIntegerField;
    queryLocatariosnome: TStringField;
    queryLocatarioscelular: TStringField;
    queryLocatariosrua: TStringField;
    queryLocatariosbairro: TStringField;
    queryLocatarioscidade: TStringField;
    queryLivroscodigolivro: TIntegerField;
    queryLivrosnome: TStringField;
    queryLivroseditora: TStringField;
    queryLivrosautor: TStringField;
    dbLookUpLivros: TDBLookupComboBox;
    dbLookUpLocatario: TDBLookupComboBox;
    queryLocacaocodigolocacao: TIntegerField;
    queryLocacaodataretirada: TDateField;
    queryLocacaodatadevolucao: TDateField;
    queryLocacaocodigolivro: TIntegerField;
    queryLocacaocodigolocatario: TIntegerField;
    queryLocacaolook_livro: TStringField;
    queryLocacaolook_locatario: TStringField;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    btnExcluir: TSpeedButton;
    Label3: TLabel;
    dbCodigoLocacao: TDBEdit;
    procedure queryLocacaoAfterInsert(DataSet: TDataSet);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbDataDevolucaoChange(Sender: TObject);
    procedure dbDataDevolucaoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Controle(acao: boolean);
    function Mascara(edt: String; str: String):String;
  end;

var
  FormLocacao: TFormLocacao;

implementation

{$R *.dfm}

uses uDataModule;

procedure TFormLocacao.queryLocacaoAfterInsert(DataSet: TDataSet);
begin
  queryLocacaodataretirada.Value := Now();
end;

procedure TFormLocacao.btnCancelarClick(Sender: TObject);
begin
  Controle(true);
  queryLocacao.Cancel;
  queryLocacao.Close;
  queryLocacao.Open;
end;

procedure TFormLocacao.btnConfirmarClick(Sender: TObject);
begin
  if (dbCodigoLocacao.Text = '') then
  begin
    MessageDlg('Preencha o campo Código', mtInformation, [mbOK], 0);
    dbCodigoLocacao.SetFocus;
    Exit;
  end;
  if (dbDataDevolucao.Text = '') then
  begin
    MessageDlg('Preencha o campo Data Devolução', mtInformation, [mbOK], 0);
    dbDataDevolucao.SetFocus;
    Exit;
  end;

  Controle(true);
  queryLocacao.Post;
  queryLocacao.Close;
  queryLocacao.Open;
end;

procedure TFormLocacao.btnEditarClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLocacao.SetFocus;
  queryLocacao.Edit;
end;

procedure TFormLocacao.btnExcluirClick(Sender: TObject);
begin
  if(MessageDlg('Confirma Exclusão?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    queryLocacao.Delete;
    queryLocacao.Close;
    queryLocacao.Open;
  end;
end;

procedure TFormLocacao.btnInserirClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLocacao.SetFocus;
  queryLocacao.Append;
end;

procedure TFormLocacao.btnSairClick(Sender: TObject);
begin
  FormLocacao.close;
end;

procedure TFormLocacao.Controle(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnEditar.Enabled := acao;
  btnExcluir.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  grupoCadastro.Enabled := not acao;
  pnlTop.Enabled := acao;
end;

procedure TFormLocacao.dbDataDevolucaoChange(Sender: TObject);
begin
  dbDataDevolucao.Text := Mascara(dbDataDevolucao.Text, '99/99/9999');
  dbDataDevolucao.SelStart := Length(dbDataDevolucao.Text);
end;

procedure TFormLocacao.dbDataDevolucaoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8]) then Abort;
end;

function TFormLocacao.Mascara(edt: string; str: string): string;
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

end.
