program ProjetoBiblioteca;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FormPrincipal},
  uLivros in 'uLivros.pas' {FormLivros},
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule},
  uLocatarios in 'uLocatarios.pas' {FormLocatarios},
  uLocacao in 'uLocacao.pas' {FormLocacao},
  uDevolucoes in 'uDevolucoes.pas' {FormDevolucoes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormLivros, FormLivros);
  Application.CreateForm(TFormLocatarios, FormLocatarios);
  Application.CreateForm(TFormLocacao, FormLocacao);
  Application.CreateForm(TFormDevolucoes, FormDevolucoes);
  Application.Run;
end.
