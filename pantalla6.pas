unit pantalla6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids,Unit4, Vcl.DBCtrls, math, Vcl.Mask;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    DataSourceGEN: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);

  private
    procedure CargarCombo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
var
  valorPC:integer;
  resultado:integer;

begin
  valorPC := StrToInt(DBEdit2.Text);
  resultado := Round(valorPC / 2);
  Label7.Caption := IntToStr(resultado);
end;

procedure TForm6.CargarCombo;
begin

  ComboBox1.Items.Add('ISBN');
  ComboBox1.Items.Add('Titulo');
  ComboBox1.Items.Add('Autor');
  ComboBox1.Items.Add('A?o');
  ComboBox1.Items.Add('Idioma');
  ComboBox1.Items.Add('G?nero');
  ComboBox1.Items.Add('Categoria');
  ComboBox1.Items.Add('Ubicacion');
  ComboBox1.Items.Add('Activo');

end;

procedure TForm6.ComboBox1Change(Sender: TObject);
var
  CadSQL2: string;
  DM2: TDataModule4;

begin

  CadSQL2 :='select * from Libros';
  DM2 := Unit4.DataModule4;
  DM2.ConsultarTodo(CadSQL2);


    DBGrid1.DataSource := nil;
    DataSourceGEN.DataSet.Refresh;
    DBGrid1.DataSource := DataSourceGEN;

end;


procedure TForm6.FormCreate(Sender: TObject);
begin
BorderStyle :=  bsDialog;
Position := poScreenCenter;
DataModule4.DSLibros.Open;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  CargarCombo;
end;

end.
