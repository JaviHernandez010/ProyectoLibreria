object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Pantalla informe de libros'
  ClientHeight = 391
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 16
    Width = 144
    Height = 23
    Caption = 'Informe de libros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 304
    Width = 107
    Height = 19
    Caption = 'N'#186' ejemplares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 304
    Width = 88
    Height = 19
    Caption = 'PrecioCoste:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 494
    Top = 304
    Width = 77
    Height = 19
    Caption = 'Ganancias:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 577
    Top = 307
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 264
    Top = 85
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 152
    Width = 649
    Height = 129
    DataSource = DataSourceGEN
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
        FieldName = 'VENDIDOS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACTIVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GANANCIAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIOCOSTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUTOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UBICACION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDIOMAS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GENERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANYO'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 317
    Top = 345
    Width = 88
    Height = 25
    Caption = 'Obtener datos'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 153
    Top = 306
    Width = 105
    Height = 21
    DataField = 'EXISTENCIAS'
    DataSource = DataSourceGEN
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 358
    Top = 306
    Width = 107
    Height = 21
    DataField = 'PRECIOCOSTE'
    DataSource = DataSourceGEN
    TabOrder = 5
  end
  object DataSourceGEN: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 544
    Top = 64
  end
end
