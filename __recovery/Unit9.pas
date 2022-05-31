unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit4, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm9 = class(TForm)
    Button2: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSourceOfertas: TDataSource;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Button3: TButton;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Button4: TButton;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    NumeroExistencias:integer;
    procedure MostrarNumero;
    procedure GetNumero;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
 Cad6SQL: string;
 DM: TDataModule4;
begin


  Cad6SQL :='select ISBN, titulo,existencias, categoria from libros where categoria = 4;';

  DM := Unit4.DataModule4;
  DM.Ofertas(Cad6SQL);


  DBGrid1.DataSource := nil;
  DataSourceOfertas.DataSet.refresh;
  DBGrid1.DataSource := DataSourceOfertas;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
self.Close;
end;

procedure TForm9.Button3Click(Sender: TObject);
var
Cad8SQL:string;
DM:TDataModule4;
begin
  Cad8SQL :='update Libros set existencias ='+DBEdit2.Text+' where isbn = '+DBEdit1.Text+';';
  DM := Unit4.DataModule4;
  DM.RevisionExistencias(Cad8SQL);

  DBGrid1.DataSource := nil;
  DataSourceOfertas.DataSet.refresh;
  DBGrid1.DataSource := DataSourceOfertas;

GetNumero;
  dec(NumeroExistencias);
  MostrarNumero;
  ShowMessage('Libro guardado con exito');
end;

procedure TForm9.Button4Click(Sender: TObject);
var
GS:integer;
LV:integer;
PC:integer;
resultado:integer;
begin
GS:= StrToInt(Edit1.Text);
LV := StrToInt(Edit2.Text);
PC:= StrToInt(Edit3.Text);
resultado := GS - (LV * PC);
Label10.Caption:=IntToStr(resultado)+ ' € ';

end;

procedure TForm9.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
{Se borra el componente directamente}
Label10.Free;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  DataModule4.DSLibros.Open;
  BorderStyle :=  bsDialog;
  Position := poScreenCenter;
end;

procedure TForm9.GetNumero;
begin
 NumeroExistencias:= StrToInt(DBEdit2.Text);
end;

procedure TForm9.MostrarNumero;
begin
 DBEdit2.Text := IntToStr(NumeroExistencias);
end;

end.