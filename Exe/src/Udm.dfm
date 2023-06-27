object dm: Tdm
  OldCreateOrder = True
  Height = 480
  Width = 640
  object Connection: TFDConnection
    Params.Strings = (
      'Database=Minerva'
      'Server=localhost\SQLEXPRESS'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 48
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 376
    Top = 64
  end
  object qryTabProductionOrder: TFDQuery
    Connection = Connection
    SQL.Strings = (
      
        'SELECT cod_production_order, des_production_order, dte_productio' +
        'n '
      '  FROM [Minerva].[dbo].[tab-production-order]'
      '  where dte_production BETWEEN  :dtStart and :dtFim')
    Left = 304
    Top = 232
    ParamData = <
      item
        Name = 'DTSTART'
        DataType = ftDate
        ParamType = ptInput
        Value = 45103d
      end
      item
        Name = 'DTFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 45103d
      end>
    object qryTabProductionOrdercod_production_order: TFDAutoIncField
      FieldName = 'cod_production_order'
      Origin = 'cod_production_order'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryTabProductionOrderdes_production_order: TStringField
      FieldName = 'des_production_order'
      Origin = 'des_production_order'
      Size = 250
    end
    object qryTabProductionOrderdte_production: TDateField
      FieldName = 'dte_production'
      Origin = 'dte_production'
    end
  end
  object qryTabProductionRecord: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      'SELECT [tab-item].cod_item  '
      '      ,[tab-item].des_item'
      '      ,[qtd_production_record]'
      ',cod_production_order'
      '  FROM [Minerva].[dbo].[tab-production-record]'
      '  left join [tab-item] on'
      '  [tab-item].cod_item = [tab-production-record].cod_item'
      '  order by [tab-item].cod_item')
    Left = 432
    Top = 224
    object qryTabProductionRecordcod_item: TFDAutoIncField
      FieldName = 'cod_item'
      Origin = 'cod_item'
      ReadOnly = True
    end
    object qryTabProductionRecorddes_item: TStringField
      FieldName = 'des_item'
      Origin = 'des_item'
      Size = 100
    end
    object qryTabProductionRecordqtd_production_record: TFloatField
      FieldName = 'qtd_production_record'
      Origin = 'qtd_production_record'
    end
    object qryTabProductionRecordcod_production_order: TIntegerField
      FieldName = 'cod_production_order'
      Origin = 'cod_production_order'
      Required = True
    end
  end
end
