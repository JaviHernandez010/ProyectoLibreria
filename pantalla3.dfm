object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Datos Basicos'
  ClientHeight = 299
  ClientWidth = 585
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
    Width = 127
    Height = 25
    Caption = 'Datos B'#225'sicos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 71
    Width = 457
    Height = 145
    DataSource = DataSourceTitulos
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
        FieldName = 'TITULO'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 448
    Top = 240
    Width = 89
    Height = 25
    Caption = 'Editar/A'#241'adir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 616
    Top = 290
    Width = 16
    Height = 7
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DataSourceTitulos: TDataSource
    DataSet = DataModule4.DSLibros
    Left = 32
    Top = 144
  end
end
