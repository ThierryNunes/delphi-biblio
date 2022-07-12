unit uLivros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormLivros = class(TForm)
    pnlBtn: TPanel;
    pnlCadastro: TPanel;
    queryLivros: TFDQuery;
    DBGrid1: TDBGrid;
    dsLivros: TDataSource;
    dbNome: TDBEdit;
    Label1: TLabel;
    dbEditora: TDBEdit;
    Label2: TLabel;
    dbAutor: TDBEdit;
    Label3: TLabel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSair: TSpeedButton;
    dbCodigoLivro: TDBEdit;
    Label4: TLabel;
    queryLivroscodigolivro: TIntegerField;
    queryLivrosnome: TStringField;
    queryLivroseditora: TStringField;
    queryLivrosautor: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Controle(acao: boolean);
  end;

var
  FormLivros: TFormLivros;

implementation

{$R *.dfm}

uses uDataModule;

procedure TFormLivros.btnCancelarClick(Sender: TObject);
begin
  Controle(true);
  queryLivros.Cancel;
  queryLivros.Close;
  queryLivros.Open;
end;

procedure TFormLivros.btnConfirmarClick(Sender: TObject);
begin
  if (dbCodigoLivro.Text = '') then
  begin
    MessageDlg('Preencha o campo Código', mtInformation, [mbOK], 0);
    dbCodigoLivro.SetFocus;
    Exit;
  end;
  if (dbNome.Text = '') then
  begin
    MessageDlg('Preencha o campo Nome do Livro', mtInformation, [mbOK], 0);
    dbNome.SetFocus;
    Exit;
  end;
  if (dbEditora.Text = '') then
  begin
    MessageDlg('Preencha o campo Nome da Editora', mtInformation, [mbOK], 0);
    dbEditora.SetFocus;
    Exit;
  end;
  if (dbAutor.Text = '') then
  begin
    MessageDlg('Preencha o campo Nome do Autor', mtInformation, [mbOK], 0);
    dbAutor.SetFocus;
    Exit;
  end;

  Controle(true);
  queryLivros.Post;
  queryLivros.Close;
  queryLivros.Open;
end;

procedure TFormLivros.btnEditarClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLivro.SetFocus;
  queryLivros.Edit;
end;

procedure TFormLivros.btnExcluirClick(Sender: TObject);
begin
  if(MessageDlg('Confirma Exclusão?', mtConfirmation, [mbYes, mbNo], 0)=mrYes) then
  begin
    queryLivros.Delete;
    queryLivros.Close;
    queryLivros.Open;
  end;
end;

procedure TFormLivros.btnInserirClick(Sender: TObject);
begin
  Controle(false);
  dbCodigoLivro.SetFocus;
  queryLivros.Append;
end;

procedure TFormLivros.btnSairClick(Sender: TObject);
begin
  FormLivros.close;
end;

procedure TFormLivros.Controle(acao: Boolean);
begin
  btnInserir.Enabled := acao;
  btnEditar.Enabled := acao;
  btnExcluir.Enabled := acao;
  btnConfirmar.Enabled := not acao;
  btnCancelar.Enabled := not acao;
  btnSair.Enabled := acao;
  pnlCadastro.Enabled := not acao;
end;

end.
