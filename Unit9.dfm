object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Pantalla9'
  ClientHeight = 558
  ClientWidth = 571
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
    Left = 216
    Top = 40
    Width = 68
    Height = 25
    Caption = 'Ofertas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 281
    Top = 216
    Width = 175
    Height = 19
    Caption = 'Obtener libros en oferta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 272
    Width = 98
    Height = 19
    Caption = 'Libro elegido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 310
    Width = 82
    Height = 19
    Caption = 'Existencias:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 376
    Width = 149
    Height = 19
    Caption = 'Ganancias semanales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 416
    Width = 109
    Height = 16
    Caption = 'Ganancia semanal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 448
    Width = 126
    Height = 16
    Caption = 'N'#186' de libros vendidos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 480
    Width = 74
    Height = 16
    Caption = 'Precio coste:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 392
    Top = 413
    Width = 75
    Height = 19
    Caption = 'Resultado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 392
    Top = 450
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 310
    Top = 274
    Width = 110
    Height = 19
    Caption = 'T'#237'tulo del libro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button2: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 87
    Width = 537
    Height = 114
    DataSource = DataSourceOfertas
    TabOrder = 1
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
        FieldName = 'TITULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXISTENCIAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 462
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 152
    Top = 272
    Width = 132
    Height = 21
    DataField = 'ISBN'
    DataSource = DataSourceOfertas
    TabOrder = 3
  end
  object Button3: TButton
    Left = 441
    Top = 337
    Width = 104
    Height = 25
    Caption = 'Reducir existencias'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBEdit2: TDBEdit
    Left = 152
    Top = 312
    Width = 132
    Height = 21
    DataField = 'EXISTENCIAS'
    DataSource = DataSourceOfertas
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 172
    Top = 415
    Width = 104
    Height = 21
    NumbersOnly = True
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 172
    Top = 447
    Width = 104
    Height = 21
    NumbersOnly = True
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 172
    Top = 479
    Width = 104
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object Button4: TButton
    Left = 441
    Top = 504
    Width = 104
    Height = 25
    Caption = 'Obtener resultado '
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 345
    Top = 504
    Width = 75
    Height = 25
    Caption = 'Nuevo'
    TabOrder = 10
    OnClick = Button5Click
  end
  object DBEdit3: TDBEdit
    Left = 426
    Top = 272
    Width = 121
    Height = 21
    DataField = 'TITULO'
    DataSource = DataSourceOfertas
    TabOrder = 11
  end
  object Button6: TButton
    Left = 337
    Top = 337
    Width = 83
    Height = 25
    Caption = 'Crear Informe'
    TabOrder = 12
    OnClick = Button6Click
  end
  object DataSourceOfertas: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 424
    Top = 40
  end
end
