object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Pantalla consulta'
  ClientHeight = 484
  ClientWidth = 546
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
    Left = 152
    Top = 24
    Width = 221
    Height = 23
    Caption = 'Consulta ganancias/gastos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 78
    Width = 35
    Height = 19
    Caption = 'ISBN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 136
    Top = 119
    Width = 31
    Height = 19
    Caption = 'Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 136
    Top = 162
    Width = 40
    Height = 19
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 432
    Top = 78
    Width = 50
    Height = 19
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 432
    Top = 118
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
  object Label8: TLabel
    Left = 432
    Top = 158
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
  object Label9: TLabel
    Left = 24
    Top = 398
    Width = 90
    Height = 19
    Caption = 'Precio coste:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 254
    Top = 394
    Width = 70
    Height = 19
    Caption = 'Ganancia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 330
    Top = 394
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 24
    Top = 440
    Width = 152
    Height = 19
    Caption = 'Ejemplares vendidos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 190
    Top = 440
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 80
    Width = 97
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 24
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 24
    Top = 160
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 304
    Top = 80
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 304
    Top = 120
    Width = 97
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 304
    Top = 160
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 416
    Top = 440
    Width = 89
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Edit8: TEdit
    Left = 120
    Top = 396
    Width = 105
    Height = 21
    TabOrder = 8
  end
  object Button3: TButton
    Left = 416
    Top = 208
    Width = 96
    Height = 25
    Caption = 'Comprobar'
    TabOrder = 9
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 73
    Top = 248
    Width = 409
    Height = 120
    DataSource = DataSourceCon
    TabOrder = 10
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
        FieldName = 'AUTOR'
        Width = 54
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
      end>
  end
  object Button4: TButton
    Left = 304
    Top = 208
    Width = 96
    Height = 25
    Caption = 'Nueva b'#250'squeda'
    TabOrder = 11
    OnClick = Button4Click
  end
  object DataSourceCon: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 232
    Top = 104
  end
end
