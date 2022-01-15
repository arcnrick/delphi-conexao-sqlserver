object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 400
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 62
    Height = 13
    Caption = 'Nome do BD:'
  end
  object Label2: TLabel
    Left = 32
    Top = 21
    Width = 89
    Height = 13
    Caption = 'Nome do Servidor:'
  end
  object btSQL: TButton
    Left = 240
    Top = 78
    Width = 113
    Height = 25
    Caption = 'Conectar SQL Server'
    TabOrder = 0
    OnClick = btSQLClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 128
    Width = 513
    Height = 264
    DataSource = ds_Pessoa
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edSQLServer: TEdit
    Left = 32
    Top = 80
    Width = 202
    Height = 21
    TabOrder = 2
  end
  object edServidor: TEdit
    Left = 32
    Top = 37
    Width = 202
    Height = 21
    TabOrder = 3
  end
  object conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=mypass;Persist Security Info=True;U' +
      'ser ID=sa'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 184
    Top = 208
  end
  object qry_Pessoa: TADOQuery
    Connection = conexao
    Parameters = <>
    Left = 184
    Top = 256
  end
  object ds_Pessoa: TDataSource
    DataSet = qry_Pessoa
    Left = 184
    Top = 312
  end
end
