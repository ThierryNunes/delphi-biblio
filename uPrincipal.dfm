object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'FormPrincipal'
  ClientHeight = 319
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object CadastrarLivro1: TMenuItem
      Caption = 'Dados Gerais'
      object Livros1: TMenuItem
        Caption = 'Livros'
        OnClick = Livros1Click
      end
      object Locatarios1: TMenuItem
        Caption = 'Locat'#225'rios'
        OnClick = Locatarios1Click
      end
      object HistricoLocaes1: TMenuItem
        Caption = 'Loca'#231#245'es'
        OnClick = HistricoLocaes1Click
      end
      object Devolues1: TMenuItem
        Caption = 'Devolu'#231#245'es'
        OnClick = Devolues1Click
      end
    end
  end
end
