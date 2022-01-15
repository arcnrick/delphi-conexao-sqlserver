unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids,
    Vcl.DBGrids;

type
    TForm1 = class(TForm)
        conexao: TADOConnection;
        qry_Pessoa: TADOQuery;
        ds_Pessoa: TDataSource;
        btSQL: TButton;
        DBGrid1: TDBGrid;
        edSQLServer: TEdit;
        Label1: TLabel;
        Label2: TLabel;
        edServidor: TEdit;
        procedure btSQLClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.FormShow(Sender: TObject);
begin
    edSQLServer.Text := '';
    edServidor.Text := '';
end;

procedure TForm1.btSQLClick(Sender: TObject);
begin
    conexao.Connected := False;

    conexao.ConnectionString := conexao.ConnectionString +
        ';Data Source=' + Trim(edServidor.Text) +
        ';Initial Catalog=' + Trim(edSQLServer.Text);

    try
        conexao.Connected := True;
    except
        on e: Exception do begin
            ShowMessage('Erro ao tentar conectar SQLServer' + #13 + e.Message);
            Abort;
        end;
    end;

    qry_Pessoa.Close;
    qry_Pessoa.SQL.Text := 'select * from tb_pessoas';
    qry_Pessoa.Open;

    ShowMessage('Conectado :)');
end;

end.
