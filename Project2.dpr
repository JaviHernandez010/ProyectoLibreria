program Project2;

uses
  Vcl.Forms,
  pantalla1 in 'pantalla1.pas' {Form1},
  pantalla2 in 'pantalla2.pas' {Form2},
  pantalla3 in 'pantalla3.pas' {Form3},
  pantalla4 in 'pantalla4.pas' {Form4},
  pantalla5 in 'pantalla5.pas' {Form5},
  pantalla6 in 'pantalla6.pas' {Form6},
  pantalla7 in 'pantalla7.pas' {Form7},
  Unit4 in 'Unit4.pas' {DataModule4: TDataModule},
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {Form9},
  PantallaInicio in 'PantallaInicio.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;

end.
