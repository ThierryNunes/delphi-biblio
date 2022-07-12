object FormDevolucoes: TFormDevolucoes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Devolu'#231#227'o'
  ClientHeight = 448
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 374
    Width = 862
    Height = 74
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -163
    ExplicitTop = 302
    ExplicitWidth = 861
    object btnDevolver: TSpeedButton
      Left = 467
      Top = 19
      Width = 89
      Height = 38
      Caption = 'Devolver'
      OnClick = btnDevolverClick
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
      Top = 19
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
  end
  object grupoDevolucao: TGroupBox
    Left = 0
    Top = 275
    Width = 862
    Height = 99
    Align = alClient
    Caption = 'Informa'#231#245'es de Devolu'#231#227'o'
    Enabled = False
    TabOrder = 1
    ExplicitTop = 256
    ExplicitHeight = 118
    object Label3: TLabel
      Left = 16
      Top = 29
      Width = 75
      Height = 13
      Caption = 'C'#243'digo Loca'#231#227'o'
    end
    object Label1: TLabel
      Left = 328
      Top = 29
      Width = 63
      Height = 13
      Caption = 'Data de Hoje'
    end
    object Label2: TLabel
      Left = 516
      Top = 29
      Width = 71
      Height = 13
      Caption = 'Dias em atraso'
    end
    object diasAtraso: TLabel
      Left = 516
      Top = 51
      Width = 71
      Height = 13
    end
    object Label4: TLabel
      Left = 171
      Top = 29
      Width = 76
      Height = 13
      Caption = 'Data Devolu'#231#227'o'
    end
    object dbCodigoLocacao: TDBText
      Left = 16
      Top = 48
      Width = 121
      Height = 17
    end
    object dbDataDevolucao: TDBText
      Left = 171
      Top = 48
      Width = 121
      Height = 17
    end
    object editDataHoje: TEdit
      Left = 328
      Top = 48
      Width = 134
      Height = 21
      TabOrder = 0
      OnChange = editDataHojeChange
      OnKeyPress = editDataHojeKeyPress
    end
  end
  object gridLocacoes: TDBGrid
    Left = 0
    Top = 0
    Width = 862
    Height = 275
    Align = alTop
    DataSource = dsLocacoes
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = gridLocacoesCellClick
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
        Width = 227
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
        Width = 324
        Visible = True
      end>
  end
  object queryLocacoes: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from locacao')
    Left = 728
    Top = 326
    object queryLocacoescodigolocacao: TIntegerField
      FieldName = 'codigolocacao'
      Origin = 'codigolocacao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryLocacoesdataretirada: TDateField
      FieldName = 'dataretirada'
      Origin = 'dataretirada'
      Required = True
    end
    object queryLocacoesdatadevolucao: TDateField
      FieldName = 'datadevolucao'
      Origin = 'datadevolucao'
      Required = True
    end
    object queryLocacoescodigolivro: TIntegerField
      FieldName = 'codigolivro'
      Origin = 'codigolivro'
      Required = True
    end
    object queryLocacoescodigolocatario: TIntegerField
      FieldName = 'codigolocatario'
      Origin = 'codigolocatario'
      Required = True
    end
    object queryLocacoeslook_livro: TStringField
      FieldKind = fkLookup
      FieldName = 'look_livro'
      LookupDataSet = queryLivros
      LookupKeyFields = 'codigolivro'
      LookupResultField = 'nome'
      KeyFields = 'codigolivro'
      Size = 60
      Lookup = True
    end
    object queryLocacoeslook_locatario: TStringField
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
  object dsLocacoes: TDataSource
    DataSet = queryLocacoes
    Left = 800
    Top = 326
  end
  object queryLivros: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from livros')
    Left = 728
    Top = 270
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
    Left = 800
    Top = 270
  end
  object queryLocatarios: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from locatarios')
    Left = 728
    Top = 222
    object queryLocatarioscodigolocatario: TIntegerField
      FieldName = 'codigolocatario'
      Origin = 'codigolocatario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object queryLocatariosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object queryLocatarioscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      Size = 30
    end
    object queryLocatariosrua: TStringField
      FieldName = 'rua'
      Origin = 'rua'
      Required = True
      Size = 60
    end
    object queryLocatariosbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 30
    end
    object queryLocatarioscidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 30
    end
  end
  object dsLocatarios: TDataSource
    DataSet = queryLocatarios
    Left = 800
    Top = 222
  end
end
