unit pantalla1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
    Vcl.Imaging.jpeg, pantalla2, pantalla3, pantalla4, pantalla6, pantalla5,
    pantalla7,PantallaInicio, Vcl.Menus, Vcl.Buttons,unit9;

type
    TForm1 = class(TForm)
        Image1: TImage;
        Label1: TLabel;
    MainMenu1: TMainMenu;
    Opciones: TMenuItem;
    Nuevosautores1: TMenuItem;
    Nuevosautores2: TMenuItem;
    Informedelibros1: TMenuItem;
    Informedelibros2: TMenuItem;
    Registrodelibros1: TMenuItem;
    Registrodelibros2: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Ayuda1: TMenuItem;
    BitBtn7: TBitBtn;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    BitBtn8: TBitBtn;
        procedure BuscarClick(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Registrodelibros2Click(Sender: TObject);
    procedure Nuevosautores1Click(Sender: TObject);
    procedure Nuevosautores2Click(Sender: TObject);
    procedure Informedelibros1Click(Sender: TObject);
    procedure Informedelibros2Click(Sender: TObject);
    procedure Registrodelibros1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
with TForm7.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 with Tform2.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
with TForm5.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
 with TForm6.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
with Tform4.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
with Tform3.Create(self) do
    try
      ShowModal;
    finally
      free;
    end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
self.Close;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
       with Tform9.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.BuscarClick(Sender: TObject);
begin
    with Tform2.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    with Tform4.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    with TForm5.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    with TForm6.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    with TForm7.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Button5Click(Sender: TObject);

begin
  with Tform3.Create(self) do
    try
      ShowModal;
    finally
      free;
    end;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  Position:= poScreenCenter;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
form10.ShowModal;
end;

procedure TForm1.Informedelibros1Click(Sender: TObject);
begin
with TForm6.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Informedelibros2Click(Sender: TObject);
begin
 with TForm7.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;



procedure TForm1.Nuevosautores1Click(Sender: TObject);
begin
 with Tform2.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Nuevosautores2Click(Sender: TObject);
begin
 with TForm5.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Registrodelibros1Click(Sender: TObject);
begin
with Tform4.Create(self) do
        try
            ShowModal;
        finally
            free;
        end;
end;

procedure TForm1.Registrodelibros2Click(Sender: TObject);
begin
 with Tform3.Create(self) do
    try
      ShowModal;
    finally
      free;
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=' Fecha ' + DateToStr(Date);
Label3.Caption:=' Hora ' + TimeToStr(Time);
end;

end.
