object FormLocatarios: TFormLocatarios
  Left = 0
  Top = 0
  Caption = 'Cadastro Locat'#225'rios'
  ClientHeight = 438
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCadastro: TPanel
    Left = 0
    Top = 249
    Width = 777
    Height = 119
    Align = alClient
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 230
      Top = 16
      Width = 27
      Height = 11
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 537
      Top = 16
      Width = 33
      Height = 11
      Caption = 'Celular'
    end
    object Label3: TLabel
      Left = 16
      Top = 60
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object Label4: TLabel
      Left = 337
      Top = 60
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label5: TLabel
      Left = 573
      Top = 60
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label6: TLabel
      Left = 16
      Top = 14
      Width = 80
      Height = 13
      Caption = 'C'#243'digo Locat'#225'rio'
    end
    object dbNome: TDBEdit
      Left = 230
      Top = 35
      Width = 289
      Height = 19
      DataField = 'nome'
      DataSource = dsLocatarios
      TabOrder = 0
    end
    object dbCelular: TDBEdit
      Left = 537
      Top = 35
      Width = 205
      Height = 19
      DataField = 'celular'
      DataSource = dsLocatarios
      TabOrder = 1
      OnChange = dbCelularChange
      OnKeyPress = dbCelularKeyPress
    end
    object dbRua: TDBEdit
      Left = 16
      Top = 79
      Width = 290
      Height = 21
      DataField = 'rua'
      DataSource = dsLocatarios
      TabOrder = 2
    end
    object dbBairro: TDBEdit
      Left = 337
      Top = 79
      Width = 192
      Height = 21
      DataField = 'bairro'
      DataSource = dsLocatarios
      TabOrder = 3
    end
    object dbCidade: TDBEdit
      Left = 573
      Top = 79
      Width = 169
      Height = 21
      DataField = 'cidade'
      DataSource = dsLocatarios
      TabOrder = 4
    end
    object dbCodigoLocatario: TDBEdit
      Left = 16
      Top = 33
      Width = 113
      Height = 21
      DataField = 'codigolocatario'
      DataSource = dsLocatarios
      TabOrder = 5
    end
  end
  object pnlBtn: TPanel
    Left = 0
    Top = 368
    Width = 777
    Height = 70
    Align = alBottom
    TabOrder = 1
    object btnInserir: TSpeedButton
      Left = 181
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Inserir'
      OnClick = btnInserirClick
    end
    object btnEditar: TSpeedButton
      Left = 276
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Editar'
      OnClick = btnEditarClick
    end
    object btnExcluir: TSpeedButton
      Left = 371
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Excluir'
      OnClick = btnExcluirClick
    end
    object btnConfirmar: TSpeedButton
      Left = 466
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Confirmar'
      Enabled = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 561
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object btnSair: TSpeedButton
      Left = 656
      Top = 16
      Width = 89
      Height = 38
      Caption = 'Sair'
      OnClick = btnSairClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 777
    Height = 249
    Align = alTop
    DataSource = dsLocatarios
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigolocatario'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Title.Caption = 'Celular'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rua'
        Title.Caption = 'Rua'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Caption = 'Bairro'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Width = 142
        Visible = True
      end>
  end
  object queryLocatarios: TFDQuery
    Active = True
    Connection = DataModule1.conexao
    SQL.Strings = (
      'select * from locatarios')
    Left = 24
    Top = 384
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
    Left = 88
    Top = 384
  end
end
