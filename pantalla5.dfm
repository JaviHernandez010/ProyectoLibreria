object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Pantalla operaciones'
  ClientHeight = 419
  ClientWidth = 532
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
    Left = 176
    Top = 24
    Width = 172
    Height = 23
    Caption = 'Ventas/Devoluciones'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 128
    Width = 172
    Height = 19
    Caption = 'Cantidad de ejemplares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 247
    Top = 362
    Width = 38
    Height = 19
    Caption = 'P.V.P'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Ganancia: TLabel
    Left = 40
    Top = 362
    Width = 64
    Height = 19
    Caption = 'Ganancia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 291
    Top = 362
    Width = 98
    Height = 19
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 78
    Width = 104
    Height = 19
    Caption = 'ISBN del libro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 226
    Top = 124
    Width = 39
    Height = 27
    Caption = '+'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 271
    Top = 124
    Width = 39
    Height = 27
    Caption = '-'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 429
    Top = 344
    Width = 95
    Height = 29
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 131
    Top = 364
    Width = 81
    Height = 21
    TabOrder = 4
  end
  object Button5: TButton
    Left = 400
    Top = 123
    Width = 95
    Height = 29
    Caption = 'Guardar'
    TabOrder = 5
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 184
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ISBN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXISTENCIAS'
        Visible = True
      end>
  end
  object Button6: TButton
    Left = 429
    Top = 382
    Width = 95
    Height = 29
    Caption = 'Nuevo'
    TabOrder = 7
    OnClick = Button6Click
  end
  object DBEdit1: TDBEdit
    Left = 150
    Top = 80
    Width = 121
    Height = 21
    DataField = 'ISBN'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 316
    Top = 130
    Width = 78
    Height = 21
    DataField = 'EXISTENCIAS'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 440
    Top = 24
  end
end
