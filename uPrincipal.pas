unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    CadastrarLivro1: TMenuItem;
    Livros1: TMenuItem;
    Locatarios1: TMenuItem;
    HistricoLocaes1: TMenuItem;
    Devolues1: TMenuItem;
    procedure Livros1Click(Sender: TObject);
    procedure Locatarios1Click(Sender: TObject);
    procedure HistricoLocaes1Click(Sender: TObject);
    procedure Devolues1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses uLivros, uLocatarios, uLocacao, uDevolucoes;

procedure TFormPrincipal.Devolues1Click(Sender: TObject);
begin
  try
    FormDevolucoes := TFormDevolucoes.Create(Application);
    FormDevolucoes.ShowModal;
  finally
    FormDevolucoes.Free;
  end;
end;

procedure TFormPrincipal.HistricoLocaes1Click(Sender: TObject);
begin
  try
    FormLocacao := TFormLocacao.Create(Application);
    FormLocacao.ShowModal;
  finally
    FormLocacao.Free;
  end;
end;

procedure TFormPrincipal.Livros1Click(Sender: TObject);
begin
  try
    FormLivros := TFormLivros.Create(Application);
    FormLivros.ShowModal;
  finally
    FormLivros.Free;
  end;
end;

procedure TFormPrincipal.Locatarios1Click(Sender: TObject);
begin
  try
    FormLocatarios := TFormLocatarios.Create(Application);
    FormLocatarios.ShowModal;
  finally
    FormLocatarios.Free;
  end;
end;

end.
