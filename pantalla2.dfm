object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'B'#250'squeda por autores'
  ClientHeight = 380
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 24
    Width = 81
    Height = 29
    Caption = 'Autores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 125
    Width = 226
    Height = 19
    Caption = 'Introduzca el nombre del autor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 168
    Width = 174
    Height = 19
    Caption = 'Introduzca un nuevo ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 416
    Top = 225
    Width = 73
    Height = 33
    Caption = 'GUARDAR'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 28
    Width = 89
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 288
    Top = 127
    Width = 201
    Height = 21
    TabOrder = 2
    OnChange = Edit2Change
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 225
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 254
    Top = 170
    Width = 235
    Height = 21
    TabOrder = 4
  end
  object Button3: TButton
    Left = 416
    Top = 281
    Width = 75
    Height = 33
    Caption = 'NUEVO'
    TabOrder = 5
    OnClick = Button3Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule4.DSAutores
    Left = 504
    Top = 48
  end
end
