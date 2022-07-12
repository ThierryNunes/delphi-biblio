unit uLocatarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons;

type
  TFormLocatarios = class(TForm)
    pnlCadastro: TPanel;
    pnlBtn: TPanel;
    DBGrid1: TDBGrid;
    queryLocatarios: TFDQuery;
    dsLocatarios: TDataSource;
    dbNome: TDBEdit;
    Label1: TLabel;
    dbCelular: TDBEdit;
    Label2: TLabel;
    dbRua: TDBEdit;
    Label3: TLabel;
    dbBairro: TDBEdit;
    Label4: TLabel;
    dbCidade: TDBEdit;
    Label5: TLabel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    dbCodigoLocatario: TDBEdit;
    Label6: TLabel;
    queryLocatarioscodigolocatario: TIntegerField;
    queryLocatariosnome: TStringField;
    queryLocatarioscelular: TStringField;
    queryLocatariosrua: TStringField;
    queryLocatariosbairro: TStringField;
    queryLocatarioscidade: TStringField;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dbCelularKeyPress(Sender: TObject; var Key: Char);
    procedure dbCelularChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Controle(acao: boolean);
    function Mascara(edt: String; str: String):String;
  end;

var
  FormLocatarios: TFormLocatarios;

implementation

{$R *.dfm}

uses uDataModule;

procedure TFormLocatarios.btnCancelarClick(Sender: TObject);
begin
  Controle(true);
  queryLocatarios.Cancel;
  queryLocatarios.Close;
  queryLocatarios.Open;
end;

procedure TFormLocatarios.btnConfirmarClick(Sender: TObject);
begin
  if (dbNome.Text = '') then
  begin
    MessageDlg('Preencha o campo Código', mtInformation, [mbOK], 0);
    dbCodigoLocatario.SetFocus;
    Exit;
  end;
  if (dbNome.Text = '') then
  begin
    MessageDlg('Preencha o campo Data Devolução', mtInformation, [mbOK], 0);
    dbNome.SetFocus;
    Exit;
  end;
  if (dbCelular.Text = '') then
  begin
    MessageDlg('Preencha o campo Celular', mtInformation, [mbOK], 0);
    dbCelular.SetFocus;
    Exit;
  end;
  if (dbRua.Text = '') then
  begin
    MessageDlg('Preencha o campo Rua', mtInformation, [mbOK], 0);
    dbRua.SetFocus;
    Exit;
  end;
  if (dbBairro.Text = '') then
  begin
    MessageDlg('Preencha o campo Bairro', mtInformation, [mbOK], 0);
    dbBairro.SetFocus;
    Exit;
  end;
  if (dbCidade.Text = '') then
  begin
    MessageDlg('Preencha o campo Cidade', mtInformation, [mbOK], 0);
    dbCidade.SetFocus;
    Exit;
  end;

  Controle(true);
  queryLocatarios.Post;
  queryLocatarios.Close;
  queryLocatarios.Open;
end;

procedure TFormLocatarios.btnEditarClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLocatario.SetFocus;
  queryLocatarios.Edit;
end;

procedure TFormLocatarios.btnExcluirClick(Sender: TObject);
begin
  if(MessageDlg('Confirma Exclusão?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    queryLocatarios.Delete;
    queryLocatarios.Close;
    queryLocatarios.Open;
  end;
end;

procedure TFormLocatarios.btnInserirClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLocatario.SetFocus;
  queryLocatarios.Append;
end;

procedure TFormLocatarios.btnSairClick(Sender: TObject);
begin
  FormLocatarios.Close;
end;

procedure TFormLocatarios.Controle(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnEditar.Enabled := acao;
  btnExcluir.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  pnlCadastro.Enabled := not acao;
end;

procedure TFormLocatarios.dbCelularChange(Sender: TObject);
begin
  dbCelular.Text := Mascara(dbCelular.Text, '(99) 99999-9999');
  dbCelular.SelStart := Length(dbCelular.Text);
end;

procedure TFormLocatarios.dbCelularKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8]) then Abort;
end;

function TFormLocatarios.Mascara(edt: string; str: string): string;
var i: integer;
begin
  for i := 1 to Length(edt) do
  begin
    if (str[i] = '9') and not (edt[i] in ['0'..'9']) and (Length(edt)=Length(str)+1) then
      delete(edt,i,1);
    if (str[i] <> '9') and (edt[i] in ['0'..'9']) then
      insert(str[i],edt, i);
  end;
  result := edt;
end;

end.
