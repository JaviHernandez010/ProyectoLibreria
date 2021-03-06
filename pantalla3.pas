unit pantalla3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Unit4, Datasnap.DBClient,Unit8,Unit9;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    DataSourceTitulos: TDataSource;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
    with Tform8.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  self.Close;
end;


procedure TForm3.Button3Click(Sender: TObject);
begin
with Tform9.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm3.Button4Click(Sender: TObject);
var
  CadSQL:string;
  DM:TDataModule4;
 begin

    CadSQL := 'select TITULO,ISBN from Libros';
    DM := Unit4.DataModule4;
    DM.ConsultarAutores(CadSQL);


    DBGrid1.DataSource := nil;
    DataSourceTitulos.DataSet.Refresh;
    DBGrid1.DataSource := DataSourceTitulos;

  end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  DataModule4.DSLibros.Open;
  BorderStyle :=  bsDialog;
  Position := poScreenCenter;
end;

end.
