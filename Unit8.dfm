object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Pantalla8'
  ClientHeight = 443
  ClientWidth = 536
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
    Top = 32
    Width = 188
    Height = 25
    Caption = 'Editar/A'#241'adir datos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 95
    Width = 100
    Height = 18
    Caption = 'Introducir ISBN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 151
    Width = 97
    Height = 18
    Caption = 'Introducir t'#237'tulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 29
    Top = 222
    Width = 87
    Height = 19
    Caption = 'ISBN actual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 267
    Top = 222
    Width = 93
    Height = 19
    Caption = 'T'#237'tulo actual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 363
    Top = 90
    Width = 99
    Height = 33
    Caption = 'Guardar cambios'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 264
    Width = 483
    Height = 153
    DataSource = DataSourceEdit
    TabOrder = 4
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
      end>
  end
  object Button3: TButton
    Left = 363
    Top = 146
    Width = 99
    Height = 33
    Caption = 'Nuevo'
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 122
    Top = 224
    Width = 121
    Height = 21
    DataField = 'ISBN'
    DataSource = DataSourceEdit
    TabOrder = 6
  end
  object DBEdit2: TDBEdit
    Left = 366
    Top = 224
    Width = 121
    Height = 21
    DataField = 'TITULO'
    DataSource = DataSourceEdit
    TabOrder = 7
  end
  object DataSourceEdit: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 464
    Top = 16
  end
end
