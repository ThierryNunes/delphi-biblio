object FormLocacao: TFormLocacao
  Left = 0
  Top = 0
  Caption = 'Cadastro de Loca'#231#227'o'
  ClientHeight = 586
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 357
    Align = alTop
    TabOrder = 0
    object gridLocacoes: TDBGrid
      Left = 1
      Top = 1
      Width = 859
      Height = 355
      Align = alClient
      DataSource = dsLocacao
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigolocacao'
          Title.Caption = 'C'#243'digo Loca'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataretirada'
          Title.Caption = 'Data Retirada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datadevolucao'
          Title.Caption = 'Data Devolu'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigolivro'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'codigolocatario'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'look_livro'
          Title.Caption = 'Livro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'look_locatario'
          Title.Caption = 'Locat'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 266
          Visible = True
        end>
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 512
    Width = 861
    Height = 74
    Align = alBottom
    TabOrder = 1
    object btnInserir: TSpeedButton
      Left = 277
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnEditar: TSpeedButton
      Left = 372
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Editar'
      OnClick = btnEditarClick
    end
    object btnConfirmar: TSpeedButton
      Left = 562
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 657
      Top = 17
      Width = 89
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 752
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
    object btnExcluir: TSpeedButton
      Left = 467
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
  end
  object grupoCadastro: TGroupBox
    Left = 0
    Top = 357
    Width = 861
    Height = 155
    Align = alClient
    Caption = 'Cadastro de Loca'#231#227'o'
    Enabled = False
    TabOrder = 2
    ExplicitTop = 362
    object dbDataRetirada: TDBText
      Left = 361
      Top = 49
      Width = 156
      Height = 17
      DataField = 'dataretirada'
      DataSource = dsLocacao
    end
    object Label1: TLabel
      Left = 361
      Top = 30
      Width = 93
      Height = 13
      Caption = 'Data Retirada Livro'
    end
    object Label2: TLabel
      Left = 361
      Top = 82
      Width = 102
      Height = 13
      Caption = 'Data Devolu'#231#227'o Livro'
    end
    object Livro: TLabel
      Left = 154
      Top = 83
      Width = 23
      Height = 13
      Caption = 'Livro'
    end
    object Label4: TLabel
      Left = 154
      Top = 29
      Width = 44
      Height = 13
      Caption = 'Locat'#225'rio'
    end
    object Label3: TLabel
      Left = 16
      Top = 32
      Width = 75
      Height = 13
      Caption = 'C'#243'digo Loca'#231#227'o'
    end
    object dbDataDevolucao: TDBEdit
      Left = 361
      Top = 101
      Width = 156
      Height = 21
      DataField = 'datadevolucao'
      DataSource = dsLocacao
      TabOrder = 0
      OnChange = dbDataDevolucaoChange
      OnKeyPress = dbDataDevolucaoKeyPress
    end
    object dbLookUpLivros: TDBLookupComboBox
      Left = 154
      Top = 102
      Width = 185
      Height = 21
      DataField = 'look_livro'
      DataSource = dsLocacao
      TabOrder = 1
    end
    object dbLookUpLocatario: TDBLookupComboBox
      Left = 154
      Top = 48
      Width = 156
      Height = 21
      DataField = 'look_locatario'
      DataSource = dsLocacao
      TabOrder = 2
    end
    object dbCodigoLocacao: TDBEdit
      Left = 16
      Top = 48
      Width = 89
      Height = 21
      DataField = 'codigolocacao'
      DataSource = dsLocacao
      TabOrder = 3
    end
  end
  object queryLocacao: TFDQuery
    Active = True
    AfterInsert = queryLocacaoAfterInsert
    IndexFieldNames = 'codigolivro;codigolocatario'
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from locacao')
    Left = 640
    Top = 416
    object queryLocacaocodigolocacao: TIntegerField
      FieldName = 'codigolocacao'
      Origin = 'codigolocacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryLocacaodataretirada: TDateField
      FieldName = 'dataretirada'
      Origin = 'dataretirada'
      Required = True
    end
    object queryLocacaodatadevolucao: TDateField
      FieldName = 'datadevolucao'
      Origin = 'datadevolucao'
      Required = True
    end
    object queryLocacaocodigolivro: TIntegerField
      FieldName = 'codigolivro'
      Origin = 'codigolivro'
      Required = True
    end
    object queryLocacaocodigolocatario: TIntegerField
      FieldName = 'codigolocatario'
      Origin = 'codigolocatario'
      Required = True
    end
    object queryLocacaolook_livro: TStringField
      FieldKind = fkLookup
      FieldName = 'look_livro'
      LookupDataSet = queryLivros
      LookupKeyFields = 'codigolivro'
      LookupResultField = 'nome'
      KeyFields = 'codigolivro'
      Size = 60
      Lookup = True
    end
    object queryLocacaolook_locatario: TStringField
      FieldKind = fkLookup
      FieldName = 'look_locatario'
      LookupDataSet = queryLocatarios
      LookupKeyFields = 'codigolocatario'
      LookupResultField = 'nome'
      KeyFields = 'codigolocatario'
      Size = 60
      Lookup = True
    end
  end
  object dsLocacao: TDataSource
    DataSet = queryLocacao
    Left = 640
    Top = 464
  end
  object queryLivros: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from livros')
    Left = 720
    Top = 416
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
    Left = 720
    Top = 464
  end
  object queryLocatarios: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from locatarios')
    Left = 808
    Top = 416
    object queryLocatarioscodigolocatario: TIntegerField
      FieldName = 'codigolocatario'
      Required = True
    end
    object queryLocatariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object queryLocatarioscelular: TStringField
      FieldName = 'celular'
      Required = True
      Size = 30
    end
    object queryLocatariosrua: TStringField
      FieldName = 'rua'
      Required = True
      Size = 60
    end
    object queryLocatariosbairro: TStringField
      FieldName = 'bairro'
      Required = True
      Size = 30
    end
    object queryLocatarioscidade: TStringField
      FieldName = 'cidade'
      Required = True
      Size = 30
    end
  end
  object dslocatarios: TDataSource
    DataSet = queryLocatarios
    Left = 808
    Top = 464
  end
end
