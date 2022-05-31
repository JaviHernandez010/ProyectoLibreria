object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Registro'
  ClientHeight = 436
  ClientWidth = 540
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
    Left = 208
    Top = 24
    Width = 76
    Height = 25
    Caption = 'Registro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Autores: TLabel
    Left = 48
    Top = 267
    Width = 51
    Height = 19
    Caption = 'G'#233'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Categoria: TLabel
    Left = 288
    Top = 267
    Width = 67
    Height = 19
    Caption = 'Categor'#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 298
    Width = 49
    Height = 16
    Caption = '1.Novela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 50
    Top = 319
    Width = 75
    Height = 16
    Caption = '2.Divulgaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 50
    Top = 341
    Width = 50
    Height = 16
    Caption = '3.Infantil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 153
    Top = 296
    Width = 48
    Height = 16
    Caption = '4.Poes'#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 456
    Top = 296
    Width = 79
    Height = 16
    Caption = '3.Serie Media'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 339
    Top = 296
    Width = 72
    Height = 16
    Caption = '1.Best Seller'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 456
    Top = 318
    Width = 63
    Height = 16
    Caption = '4.Low Cost'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 153
    Top = 318
    Width = 119
    Height = 16
    Caption = '5.Manuales T'#233'cnicos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 153
    Top = 340
    Width = 54
    Height = 16
    Caption = '6.Historia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 339
    Top = 318
    Width = 94
    Height = 16
    Caption = '2.Edici'#243'n de lujo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 81
    Width = 449
    Height = 121
    DataSource = DataSourceGeneral
    TabOrder = 0
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
        FieldName = 'GENERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 105
    Top = 269
    Width = 121
    Height = 21
    DataField = 'GENERO'
    DataSource = DataSourceGeneral
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 376
    Top = 269
    Width = 121
    Height = 21
    DataField = 'CATEGORIA'
    DataSource = DataSourceGeneral
    TabOrder = 3
  end
  object DataSourceGenero: TDataSource
    DataSet = DataModule4.DSGenero
    Left = 344
    Top = 16
  end
  object DataSourceCategoria: TDataSource
    DataSet = DataModule4.DSCategoria
    Left = 456
    Top = 16
  end
  object DataSourceGeneral: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 120
    Top = 16
  end
end
