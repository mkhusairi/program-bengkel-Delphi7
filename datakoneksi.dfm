object DM: TDM
  OldCreateOrder = False
  Left = 551
  Top = 141
  Height = 469
  Width = 726
  object ADOCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=dbbengkel.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 320
    Top = 16
  end
  object QueryBarang1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from barang')
    Left = 24
    Top = 72
  end
  object DataBarang1: TDataSource
    DataSet = QueryBarang1
    Left = 24
    Top = 128
  end
  object QueryBarang2: TADOQuery
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 24
    Top = 184
  end
  object QueryKasir1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from kasir')
    Left = 104
    Top = 72
    object QueryKasir1KDkasir: TWideStringField
      FieldName = 'KDkasir'
      Size = 5
    end
    object QueryKasir1NMkasir: TWideStringField
      FieldName = 'NMkasir'
      Size = 25
    end
    object QueryKasir1PWkasir: TWideStringField
      FieldName = 'PWkasir'
      EditMask = '****************;1;_'
      Size = 16
    end
    object QueryKasir1STTSkasir: TWideStringField
      FieldName = 'STTSkasir'
      Size = 15
    end
  end
  object QueryKasir2: TADOQuery
    Parameters = <>
    Left = 104
    Top = 184
  end
  object QueryMekanik1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from Mekanik')
    Left = 184
    Top = 72
  end
  object QueryMekanik2: TADOQuery
    Parameters = <>
    Left = 184
    Top = 184
  end
  object QueryPelanggan1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from pelanggan')
    Left = 272
    Top = 72
  end
  object QueryPelanggan2: TADOQuery
    Parameters = <>
    Left = 272
    Top = 184
  end
  object QueryJasa1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jasa')
    Left = 360
    Top = 72
  end
  object QueryJasa2: TADOQuery
    Parameters = <>
    Left = 360
    Top = 184
  end
  object DataKasir1: TDataSource
    DataSet = QueryKasir1
    Left = 104
    Top = 128
  end
  object DataMekanik1: TDataSource
    DataSet = QueryMekanik1
    Left = 184
    Top = 128
  end
  object DataPelanggan1: TDataSource
    DataSet = QueryPelanggan1
    Left = 272
    Top = 128
  end
  object DataJasa1: TDataSource
    DataSet = QueryJasa1
    Left = 360
    Top = 128
  end
  object QueryDaftarService1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from pendaftaran')
    Left = 448
    Top = 72
  end
  object QueryDaftarService2: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from pendaftaran')
    Left = 448
    Top = 184
  end
  object DataDaftarService1: TDataSource
    DataSet = QueryDaftarService1
    Left = 448
    Top = 128
  end
  object DataService1: TDataSource
    DataSet = CDSservice1
    Left = 552
    Top = 128
  end
  object CDSservice2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 296
  end
  object CDSservice1: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'Subtotal'
        Expression = 'sum(subtotal)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'Jumlah'
        Expression = 'sum(jumlah)'
        Visible = False
      end>
    AggregatesActive = True
    Params = <>
    Left = 552
    Top = 240
    Data = {
      820000009619E0BD0100000018000000050000000000030000008200084B4462
      6172616E670100490000000100055749445448020002000500084E4D62617261
      6E67010049000000010005574944544802000200190005486172676108000400
      00000000064A756D6C6168080004000000000008537562746F74616C08000400
      000000000000}
    object CDSservice1KDbarang: TStringField
      DisplayWidth = 20
      FieldName = 'KDbarang'
      Size = 5
    end
    object CDSservice1NMbarang: TStringField
      DisplayWidth = 52
      FieldName = 'NMbarang'
      Size = 25
    end
    object CDSservice1Harga: TFloatField
      DisplayWidth = 24
      FieldName = 'Harga'
    end
    object CDSservice1Jumlah: TFloatField
      DisplayWidth = 15
      FieldName = 'Jumlah'
    end
    object CDSservice1Subtotal: TFloatField
      DisplayWidth = 24
      FieldName = 'Subtotal'
    end
  end
  object DataSparepart1: TDataSource
    DataSet = CDSsparepart1
    Left = 640
    Top = 128
  end
  object CDSsparepart1: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'Jumlah'
        Expression = 'sum(jumlah)'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'Subtotal'
        Expression = 'sum(subtotal)'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'KDbarang'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NMbarang'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Harga'
        DataType = ftFloat
      end
      item
        Name = 'Jumlah'
        DataType = ftFloat
      end
      item
        Name = 'SubTotal'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 640
    Top = 240
    Data = {
      820000009619E0BD0100000018000000050000000000030000008200084B4462
      6172616E670100490000000100055749445448020002000500084E4D62617261
      6E67010049000000010005574944544802000200190005486172676108000400
      00000000064A756D6C6168080004000000000008537562546F74616C08000400
      000000000000}
    object CDSsparepart1KDbarang: TStringField
      DisplayLabel = 'KDBarang'
      DisplayWidth = 15
      FieldName = 'KDbarang'
      Size = 5
    end
    object CDSsparepart1NMbarang: TStringField
      DisplayLabel = 'NMBarang'
      DisplayWidth = 50
      FieldName = 'NMbarang'
      Size = 25
    end
    object CDSsparepart1Harga: TFloatField
      DisplayWidth = 24
      FieldName = 'Harga'
    end
    object CDSsparepart1Jumlah: TFloatField
      DisplayWidth = 15
      FieldName = 'Jumlah'
    end
    object CDSsparepart1SubTotal: TFloatField
      DisplayWidth = 24
      FieldName = 'SubTotal'
    end
  end
  object CDSsparepart2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 296
  end
  object QuerySparepart1: TADOQuery
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Penjualan')
    Left = 640
    Top = 72
  end
  object QuerySparepart2: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from penjualan')
    Left = 640
    Top = 184
  end
  object QueryService1: TADOQuery
    Parameters = <>
    Left = 552
    Top = 72
  end
  object QueryService2: TADOQuery
    Parameters = <>
    Left = 552
    Top = 184
  end
  object QueryLogin1: TADOQuery
    Connection = ADOCon
    Parameters = <>
    SQL.Strings = (
      'select*from kasir')
    Left = 272
    Top = 248
  end
  object QueryRservice1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from service')
    Left = 224
    Top = 304
  end
  object QueryRservice2: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from detailservice')
    Left = 320
    Top = 304
  end
  object QueryRsparepart1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from penjualan')
    Left = 224
    Top = 360
  end
  object QueryRsparepart2: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from detailjual')
    Left = 320
    Top = 360
  end
  object RSparepart1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from penjualan')
    Left = 24
    Top = 256
  end
  object RService1: TADOQuery
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from service')
    Left = 448
    Top = 248
  end
  object RReportbarang1: TADOQuery
    Connection = ADOCon
    Parameters = <>
    SQL.Strings = (
      'select*from barang')
    Left = 120
    Top = 256
  end
end
