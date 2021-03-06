unit Unit4;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.DB, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, messages, Vcl.Forms;

type
  TDataModule4 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ISBN: TIntegerField;
    ClientDataSet1TITULO: TStringField;
    ClientDataSet1EXISTENCIAS: TIntegerField;
    ClientDataSet1VENDIDOS: TIntegerField;
    ClientDataSet1ACTIVO: TStringField;
    ClientDataSet1GANANCIAS: TSingleField;
    ClientDataSet1PRECIOCOSTE: TSingleField;
    ClientDataSet1AUTOR: TIntegerField;
    ClientDataSet1UBICACION: TIntegerField;
    ClientDataSet1IDIOMAS: TIntegerField;
    ClientDataSet1GENERO: TIntegerField;
    ClientDataSet1CATEGORIA: TIntegerField;
    ClientDataSet1A?O: TIntegerField;
    QRAutores: TFDQuery;
    DSAutores: TClientDataSet;
    PRAutores: TDataSetProvider;
    DSCategoria: TClientDataSet;
    PRCategoria: TDataSetProvider;
    QRCategoria: TFDQuery;
    DSCajas: TClientDataSet;
    PRCajas: TDataSetProvider;
    QRCajas: TFDQuery;
    DSGenero: TClientDataSet;
    PRGenero: TDataSetProvider;
    QRGenero: TFDQuery;
    DSIdiomas: TClientDataSet;
    PRIdiomas: TDataSetProvider;
    QRIdiomas: TFDQuery;
    DSLibros: TClientDataSet;
    PRLibros: TDataSetProvider;
    QRLibros: TFDQuery;
    DSMovimientos: TClientDataSet;
    PRMovimientos: TDataSetProvider;
    QRMovimientos: TFDQuery;
    DSOperaciones: TClientDataSet;
    PROperaciones: TDataSetProvider;
    QROperaciones: TFDQuery;
    DSUbicaciones: TClientDataSet;
    PRUbicaciones: TDataSetProvider;
    QRUbicaciones: TFDQuery;
    DSAutoresIDAUTOR: TIntegerField;
    DSAutoresNOMBREAUTOR: TStringField;
    DSCategoriaIDCATEGORIA: TIntegerField;
    DSCategoriaTIPODECATEGORIA: TStringField;
    DSCajasIDCAJAS: TIntegerField;
    DSCajasCAJA: TStringField;
    DSGeneroIDGENERO: TIntegerField;
    DSGeneroTIPODEGENERO: TStringField;
    DSIdiomasIDLENGUAJE: TIntegerField;
    DSIdiomasLENGUAJE: TStringField;
    DSLibrosISBN: TIntegerField;
    DSLibrosTITULO: TStringField;
    DSLibrosEXISTENCIAS: TIntegerField;
    DSLibrosVENDIDOS: TIntegerField;
    DSLibrosACTIVO: TStringField;
    DSLibrosGANANCIAS: TSingleField;
    DSLibrosPRECIOCOSTE: TSingleField;
    DSLibrosAUTOR: TIntegerField;
    DSLibrosUBICACION: TIntegerField;
    DSLibrosIDIOMAS: TIntegerField;
    DSLibrosGENERO: TIntegerField;
    DSLibrosCATEGORIA: TIntegerField;
    DSLibrosANYO: TIntegerField;
    DSMovimientosID: TIntegerField;
    DSMovimientosOPERACION: TIntegerField;
    DSMovimientosISBN: TIntegerField;
    DSMovimientosCAJA: TIntegerField;
    DSMovimientosFECHA: TDateField;
    DSMovimientosGANANCIA: TSingleField;
    DSOperacionesIDOPERACION: TIntegerField;
    DSOperacionesTIPOOPERACION: TStringField;
    DSUbicacionesIDUBICACION: TIntegerField;
    DSUbicacionesUBICACION: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure ConsultarAutores(CadSQL: string);
    procedure ConsultarTodo(Cad2SQL:string);
    procedure ConsultarCategoria(Cad3SQL:string);
    procedure ConsultarGenero(Cad4SQL:string);
    procedure A?adirDatos(Cad5SQL:string);
    procedure RevisionExistencias(Cad6SQL:string);
    procedure Ofertas(Cad7SQL:string);

  end;

var
  DataModule4: TDataModule4;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TDataModule4 }
procedure TDataModule4.ConsultarTodo(Cad2SQL: string);

begin

  QRLibros.Active := False;
  QRLibros.SQL.Strings[0] := Cad2SQL;
  QRLibros.Active := True;

end;


procedure TDataModule4.Ofertas(Cad7SQL: string);
var
misql4:string;
begin

  QRLibros.SQL.Clear;
  QRLibros.SQL.Add('select * from libros;');


  QRLibros.Active := False;
  DSLibros.close;
  QRLibros.Active := True;
  DSLibros.open;


  QRLibros.Active := False;
  QRLibros.SQL.Strings[0] := Cad7SQL;
  QRLibros.Active := True;

end;

procedure TDataModule4.RevisionExistencias(Cad6SQL: string);
var
misql3:string;
begin
  misql3 := QRLibros.SQL.Strings[0];
  qrlibros.ExecSQL(Cad6SQL);
  QRLibros.SQL.Strings[0] := misql3;
end;

procedure TDataModule4.A?adirDatos(Cad5SQL: string);
var
 misql: string;
begin
  misql := QRLibros.SQL.Strings[0];
  qrlibros.ExecSQL(Cad5SQL);
  QRLibros.SQL.Strings[0] := misql;


//  QRLibros.Active:= True;
end;

procedure TDataModule4.ConsultarAutores(CadSQL: string);
var
miSQL:string;
begin
  miSQL := QRAutores.SQL.strings[0];
  QRAutores.ExecSQL(CadSQL);
  QRAutores.SQL.Strings[0] := miSQL;
end;

procedure TDataModule4.ConsultarCategoria(Cad3SQL: string);
begin
  QRCategoria.Active := False;
  QRCategoria.SQL.Strings[0] := Cad3SQL;
  QRCategoria.Active := True;
end;

procedure TDataModule4.ConsultarGenero(Cad4SQL: string);
begin
  QRGenero.Active := False;
  QRGenero.SQL.Strings[0] := Cad4SQL;
  QRGenero.Active := True;
end;



//update or insert into LIBROS (ISBN, TITULO) values (9999, 'titulo') matching (ISBN);

end.
