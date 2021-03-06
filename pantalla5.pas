unit pantalla5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, inifiles, Data.DB,unit4,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Ganancia: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button5: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button6: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    sumar: array of integer;
    NumeroLibros: integer;
    procedure MostrarNumero;
    procedure GetNumero;

    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form5: TForm5;
  DatosGuardados: TIniFile;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  GetNumero;
  inc(NumeroLibros);
  MostrarNumero;

end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  GetNumero;
  dec(NumeroLibros);
  MostrarNumero;
end;

procedure TForm5.Button3Click(Sender: TObject);
var
  valor1: integer;
  resultado: integer;
begin
  (* Codigo para calcular el PVP(coste+ganancia) *)
  valor1 := StrToInt(Edit3.Text);
  resultado := valor1 + 10;
  Label4.Caption := IntToStr(resultado);
end;


procedure TForm5.Button4Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm5.Button5Click(Sender: TObject);
var CadSQL:string;
DM:TDataModule4;
begin
  CadSQL :='update Libros set existencias ='+DBEdit2.Text+' where isbn = '+DBEdit1.Text+';';
  DM := Unit4.DataModule4;
  DM.RevisionExistencias(CadSQL);

  DBGrid1.DataSource := nil;
  DataSource1.DataSet.refresh;
  DBGrid1.DataSource := DataSource1;

   If (DBEdit2.Text = '') or (DBEdit1.Text = '')Then
  Begin
    showmessage('No puede haber campos en blanco');
  end
  else
    ShowMessage('Libro actualizado con exito');

end;

procedure TForm5.Button6Click(Sender: TObject);
begin
Edit3.clear;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
  GetNumero;
  (* Mensajes emergentes para anunciar la falta de existencias de libros *)
  if NumeroLibros = 1 then
    ShowMessage('Este es el ultimo ejemplar del libro')
  else if NumeroLibros = 0 then
    ShowMessage
      ('Ya no quedan m?s ejemplares de este libro, contacte con el proveedor para pedir nuevas unidades')
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
BorderStyle :=  bsDialog;
Position := poScreenCenter;
end;

procedure TForm5.GetNumero;
begin
  NumeroLibros := StrToInt(DBEdit2.Text);
end;

procedure TForm5.MostrarNumero;
begin
  DBEdit2.Text := IntToStr(NumeroLibros);
end;

end.
