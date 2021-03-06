unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit4, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DataSourceEdit: TDataSource;
    DBGrid1: TDBGrid;
    Button3: TButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);

var
 CadSQL: string;
 DM: TDataModule4;
begin
  CadSQL :='update or insert into LIBROS (ISBN, TITULO) values ('+Edit1.Text+' ,'+quotedstr(Edit2.Text)+') matching (ISBN)';
  DM := Unit4.DataModule4;
  DM.AņadirDatos(CadSQL);

  DBGrid1.DataSource := nil;
  DataSourceEdit.DataSet.refresh;
  DBGrid1.DataSource := DataSourceEdit;

end;

procedure TForm8.Button2Click(Sender: TObject);
begin
self.Close;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin

  DataModule4.DSLibros.Open;
  BorderStyle :=  bsDialog;
  Position := poScreenCenter;
end;

end.
