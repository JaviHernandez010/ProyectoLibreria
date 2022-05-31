unit pantalla4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.DBCtrls, Unit4, Data.Win.ADODB, Vcl.Mask;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSourceGenero: TDataSource;
    DataSourceCategoria: TDataSource;
    Button1: TButton;
    Autores: TLabel;
    Categoria: TLabel;
    DataSourceGeneral: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  self.Close;
end;



procedure TForm4.FormCreate(Sender: TObject);
begin
BorderStyle :=  bsDialog;
Position := poScreenCenter;
DataModule4.DSAutores.Open;
DataModule4.DSCategoria.Open;
DataModule4.DSGenero.Open;
end;

end.


