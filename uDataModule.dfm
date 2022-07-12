object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 396
  Width = 596
  object conexao: TFDConnection
    Params.Strings = (
      'Database=biblio'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
end
