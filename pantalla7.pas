unit pantalla7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,Unit4,
  Vcl.DBGrids;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Button3: TButton;
    Label12: TLabel;
    Label13: TLabel;
    DBGrid1: TDBGrid;
    DataSourceCon: TDataSource;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  valorPC: Integer;
  resultado: Integer;
  numeroR: integer;
begin
  valorPC := StrToInt(Edit8.Text);
  resultado := Round(valorPC / 2);
  Label11.Caption := IntToStr(resultado);
  numeroR:= random(100);
  Label13.Caption := IntToStr(numeroR);

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  If (Edit1.Text = '') or (Edit2.Text = '') or
    (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') or
    (Edit7.Text = '') Then
  Begin
    showmessage('No puede haber campos en blanco');
  end
  else
    ShowMessage('Libro encontrado, introduzca el precio de coste');
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.clear;
Edit6.Clear;
edit7.Clear;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
  Edit1.MaxLength := 9;
  If Length(Edit1.Text) > 9 then
    showmessage('Error has superado el limite de caracteres');
end;



procedure TForm7.FormCreate(Sender: TObject);
begin
BorderStyle :=  bsDialog;
Position := poScreenCenter;
end;

end.
