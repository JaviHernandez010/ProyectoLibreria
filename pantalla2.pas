unit pantalla2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, pantalla3,
  Vcl.Mask, Vcl.DBCtrls,Unit4, inifiles, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label3: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    NombreAutores: string;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;



implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
var
CadSQL : string;
DM: TDataModule4;

begin
CadSQL :='update or insert into Autores (IDAUTOR, NOMBREAUTOR) values ('+Edit1.Text+' ,'+quotedstr(Edit2.Text)+')';
  DM := Unit4.DataModule4;
  DM.ConsultarAutores(CadSQL);

  DBGrid1.DataSource := nil;
  DataSource1.DataSet.refresh;
  DBGrid1.DataSource := DataSource1;
      If (Edit1.Text = '') or (Edit2.Text='') Then
  Begin
    showmessage('No puede estar en blanco');
  end
  else
  begin
     ShowMessage('Autor guardado con exito');
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  self.Close;
end;



procedure TForm2.Button3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
  Edit1.Text;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

    BorderStyle :=  bsDialog;
    Position := poScreenCenter;
    DataModule4.DSAutores.Open;
end;

end.
