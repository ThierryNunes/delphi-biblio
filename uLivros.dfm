object FormLivros: TFormLivros
  Left = 0
  Top = 0
  Caption = 'Cadastro Livros'
  ClientHeight = 382
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBtn: TPanel
    Left = 0
    Top = 319
    Width = 688
    Height = 63
    Align = alBottom
    TabOrder = 2
    object btnInserir: TSpeedButton
      Left = 101
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnEditar: TSpeedButton
      Left = 196
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Editar'
      OnClick = btnEditarClick
    end
    object btnExcluir: TSpeedButton
      Left = 291
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 386
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 481
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 576
      Top = 13
      Width = 89
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object pnlCadastro: TPanel
    Left = 0
    Top = 214
    Width = 688
    Height = 105
    Align = alClient
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 208
      Top = 6
      Width = 23
      Height = 13
      Caption = 'Livro'
    end
    object Label2: TLabel
      Left = 16
      Top = 52
      Width = 34
      Height = 13
      Caption = 'Editora'
    end
    object Label3: TLabel
      Left = 208
      Top = 52
      Width = 27
      Height = 13
      Caption = 'Autor'
    end
    object Label4: TLabel
      Left = 16
      Top = 6
      Width = 59
      Height = 13
      Caption = 'C'#243'digo Livro'
    end
    object dbNome: TDBEdit
      Left = 208
      Top = 25
      Width = 177
      Height = 21
      DataField = 'nome'
      DataSource = dsLivros
      TabOrder = 0
    end
    object dbEditora: TDBEdit
      Left = 16
      Top = 71
      Width = 177
      Height = 21
      DataField = 'editora'
      DataSource = dsLivros
      TabOrder = 1
    end
    object dbAutor: TDBEdit
      Left = 208
      Top = 71
      Width = 313
      Height = 21
      DataField = 'autor'
      DataSource = dsLivros
      TabOrder = 2
    end
    object dbCodigoLivro: TDBEdit
      Left = 16
      Top = 25
      Width = 97
      Height = 21
      DataField = 'codigolivro'
      DataSource = dsLivros
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 214
    Align = alTop
    DataSource = dsLivros
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigolivro'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Livro'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'editora'
        Title.Caption = 'Editora'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'autor'
        Title.Caption = 'Autor'
        Visible = True
      end>
  end
  object queryLivros: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from livros;')
    Left = 576
    Top = 272
    object queryLivroscodigolivro: TIntegerField
      FieldName = 'codigolivro'
      Origin = 'codigolivro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryLivrosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object queryLivroseditora: TStringField
      FieldName = 'editora'
      Origin = 'editora'
      Required = True
      Size = 60
    end
    object queryLivrosautor: TStringField
      FieldName = 'autor'
      Origin = 'autor'
      Required = True
      Size = 60
    end
  end
  object dsLivros: TDataSource
    DataSet = queryLivros
    Left = 640
    Top = 272
  end
end
