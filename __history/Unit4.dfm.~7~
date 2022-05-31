object DataModule4: TDataModule4
  OldCreateOrder = False
  Height = 631
  Width = 952
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Proyecto\Libreria\Datos\MILIBRERIA3.fdb'
      'Password=masterkey'
      'User_Name=sysdba'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 296
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from libros')
    Left = 192
    Top = 144
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDQuery1
    Left = 112
    Top = 152
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 32
    Top = 152
    object ClientDataSet1ISBN: TIntegerField
      FieldName = 'ISBN'
      Required = True
    end
    object ClientDataSet1TITULO: TStringField
      FieldName = 'TITULO'
      Size = 40
    end
    object ClientDataSet1EXISTENCIAS: TIntegerField
      FieldName = 'EXISTENCIAS'
    end
    object ClientDataSet1VENDIDOS: TIntegerField
      FieldName = 'VENDIDOS'
    end
    object ClientDataSet1ACTIVO: TStringField
      FieldName = 'ACTIVO'
    end
    object ClientDataSet1GANANCIAS: TSingleField
      FieldName = 'GANANCIAS'
    end
    object ClientDataSet1PRECIOCOSTE: TSingleField
      FieldName = 'PRECIOCOSTE'
    end
    object ClientDataSet1AUTOR: TIntegerField
      FieldName = 'AUTOR'
    end
    object ClientDataSet1UBICACION: TIntegerField
      FieldName = 'UBICACION'
    end
    object ClientDataSet1IDIOMAS: TIntegerField
      FieldName = 'IDIOMAS'
    end
    object ClientDataSet1GENERO: TIntegerField
      FieldName = 'GENERO'
    end
    object ClientDataSet1CATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object ClientDataSet1AÃO: TIntegerField
      FieldName = 'A'#195#8216'O'
    end
  end
  object QRAutores: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from autores')
    Left = 216
    Top = 304
  end
  object DSAutores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PRAutores'
    Left = 80
    Top = 304
    object DSAutoresIDAUTOR: TIntegerField
      FieldName = 'IDAUTOR'
      Origin = 'IDAUTOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSAutoresNOMBREAUTOR: TStringField
      FieldName = 'NOMBREAUTOR'
      Origin = 'NOMBREAUTOR'
      Size = 30
    end
  end
  object PRAutores: TDataSetProvider
    DataSet = QRAutores
    Left = 152
    Top = 304
  end
  object DSCategoria: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PRCategoria'
    Left = 80
    Top = 368
    object DSCategoriaIDCATEGORIA: TIntegerField
      FieldName = 'IDCATEGORIA'
      Origin = 'IDCATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSCategoriaTIPODECATEGORIA: TStringField
      FieldName = 'TIPODECATEGORIA'
      Origin = 'TIPODECATEGORIA'
    end
  end
  object PRCategoria: TDataSetProvider
    DataSet = QRCategoria
    Left = 152
    Top = 368
  end
  object QRCategoria: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from categoria')
    Left = 216
    Top = 368
  end
  object DSCajas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRCajas'
    Left = 80
    Top = 440
    object DSCajasIDCAJAS: TIntegerField
      FieldName = 'IDCAJAS'
      Required = True
    end
    object DSCajasCAJA: TStringField
      FieldName = 'CAJA'
      Size = 30
    end
  end
  object PRCajas: TDataSetProvider
    DataSet = QRCajas
    Left = 144
    Top = 440
  end
  object QRCajas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cajas')
    Left = 216
    Top = 440
  end
  object DSGenero: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRGenero'
    Left = 80
    Top = 504
    object DSGeneroIDGENERO: TIntegerField
      FieldName = 'IDGENERO'
      Required = True
    end
    object DSGeneroTIPODEGENERO: TStringField
      FieldName = 'TIPODEGENERO'
    end
  end
  object PRGenero: TDataSetProvider
    DataSet = QRGenero
    Left = 144
    Top = 504
  end
  object QRGenero: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from genero'
      '')
    Left = 216
    Top = 504
  end
  object DSIdiomas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PRIdiomas'
    Left = 352
    Top = 304
    object DSIdiomasIDLENGUAJE: TIntegerField
      FieldName = 'IDLENGUAJE'
      Origin = 'IDLENGUAJE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DSIdiomasLENGUAJE: TStringField
      FieldName = 'LENGUAJE'
      Origin = 'LENGUAJE'
      Size = 30
    end
  end
  object PRIdiomas: TDataSetProvider
    DataSet = QRIdiomas
    Left = 424
    Top = 304
  end
  object QRIdiomas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from idiomas')
    Left = 496
    Top = 304
  end
  object DSLibros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRLibros'
    Left = 352
    Top = 368
    object DSLibrosISBN: TIntegerField
      FieldName = 'ISBN'
      Required = True
    end
    object DSLibrosTITULO: TStringField
      FieldName = 'TITULO'
      Size = 40
    end
    object DSLibrosEXISTENCIAS: TIntegerField
      FieldName = 'EXISTENCIAS'
    end
    object DSLibrosVENDIDOS: TIntegerField
      FieldName = 'VENDIDOS'
    end
    object DSLibrosACTIVO: TStringField
      FieldName = 'ACTIVO'
    end
    object DSLibrosGANANCIAS: TSingleField
      FieldName = 'GANANCIAS'
    end
    object DSLibrosPRECIOCOSTE: TSingleField
      FieldName = 'PRECIOCOSTE'
    end
    object DSLibrosAUTOR: TIntegerField
      FieldName = 'AUTOR'
    end
    object DSLibrosUBICACION: TIntegerField
      FieldName = 'UBICACION'
    end
    object DSLibrosIDIOMAS: TIntegerField
      FieldName = 'IDIOMAS'
    end
    object DSLibrosGENERO: TIntegerField
      FieldName = 'GENERO'
    end
    object DSLibrosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object DSLibrosANYO: TIntegerField
      FieldName = 'ANYO'
    end
  end
  object PRLibros: TDataSetProvider
    DataSet = QRLibros
    Left = 424
    Top = 368
  end
  object QRLibros: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from libros')
    Left = 496
    Top = 368
  end
  object DSMovimientos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRMovimientos'
    Left = 352
    Top = 440
    object DSMovimientosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DSMovimientosOPERACION: TIntegerField
      FieldName = 'OPERACION'
    end
    object DSMovimientosISBN: TIntegerField
      FieldName = 'ISBN'
    end
    object DSMovimientosCAJA: TIntegerField
      FieldName = 'CAJA'
    end
    object DSMovimientosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object DSMovimientosGANANCIA: TSingleField
      FieldName = 'GANANCIA'
    end
  end
  object PRMovimientos: TDataSetProvider
    DataSet = QRMovimientos
    Left = 432
    Top = 440
  end
  object QRMovimientos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from movimientos')
    Left = 520
    Top = 440
  end
  object DSOperaciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROperaciones'
    Left = 344
    Top = 512
    object DSOperacionesIDOPERACION: TIntegerField
      FieldName = 'IDOPERACION'
      Required = True
    end
    object DSOperacionesTIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Size = 30
    end
  end
  object PROperaciones: TDataSetProvider
    DataSet = QROperaciones
    Left = 432
    Top = 512
  end
  object QROperaciones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from operaciones')
    Left = 520
    Top = 512
  end
  object DSUbicaciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRUbicaciones'
    Left = 680
    Top = 296
    object DSUbicacionesIDUBICACION: TIntegerField
      FieldName = 'IDUBICACION'
      Required = True
    end
    object DSUbicacionesUBICACION: TStringField
      FieldName = 'UBICACION'
    end
  end
  object PRUbicaciones: TDataSetProvider
    DataSet = QRUbicaciones
    Left = 768
    Top = 296
  end
  object QRUbicaciones: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from ubicaciones')
    Left = 856
    Top = 296
  end
end
