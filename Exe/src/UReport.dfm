object frmReport: TfrmReport
  Left = 0
  Top = 0
  Caption = 'Report'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object ReportProduction: TfrxReport
    Version = '6.3.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45103.901028055600000000
    ReportOptions.LastChange = 45103.985404467600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 488
    Top = 152
    Datasets = <
      item
        DataSet = frxDBdsMemdate
        DataSetName = 'Memdate'
      end
      item
        DataSet = frxDBdsProductionOrder
        DataSetName = 'ProductionOrder'
      end
      item
        DataSet = frxDBdsProductionRecord
        DataSetName = 'ProductionRecord'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 706.772110000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODU'#199#195'O')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 41.574830000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data: [Date]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Height = 86.929190000000000000
          Frame.Typ = []
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object frxUDSdtStart: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxUDS'
          Frame.Typ = []
          Memo.UTF8W = (
            'De: [Memdate."dtStart"] ate [Memdate."dtEnd"]')
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterProduction: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdsProductionOrder
        DataSetName = 'ProductionOrder'
        RowCount = 0
        object ProductionOrdercod_production_order: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 472.441250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBdsProductionOrder
          DataSetName = 'ProductionOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[ProductionOrder."cod_production_order"] - [ProductionOrder."des' +
              '_production_order"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'COD-ITEM')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 64.252010000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME ITEM')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTD PRODUZIDA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 7.559060000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ordem de produ'#231#227'o:')
          ParentFont = False
        end
      end
      object DetailProduction: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 25.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdsProductionRecord
        DataSetName = 'ProductionRecord'
        Filter = 
          '<ProductionOrder."cod_production_order"> = <ProductionRecord."co' +
          'd_production_order">'
        KeepChild = True
        RowCount = 0
        object ProductionRecordcod_item: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'cod_item'
          DataSet = frxDBdsProductionRecord
          DataSetName = 'ProductionRecord'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ProductionRecord."cod_item"]')
          ParentFont = False
        end
        object ProductionRecorddes_item: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'des_item'
          DataSet = frxDBdsProductionRecord
          DataSetName = 'ProductionRecord'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ProductionRecord."des_item"]')
          ParentFont = False
        end
        object ProductionRecordqtd_production_record: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'qtd_production_record'
          DataSet = frxDBdsProductionRecord
          DataSetName = 'ProductionRecord'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ProductionRecord."qtd_production_record"]')
          ParentFont = False
        end
      end
      object FooterGeneral: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 325.039580000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DA ORDEM DE PRODU'#199#195'O:')
          ParentFont = False
        end
        object memosumOrder: TfrxSysMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<ProductionRecord."qtd_production_record">,DetailProduction' +
              ')]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 11.338590000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210816
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL GERAL:')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4210816
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[SUM(<ProductionRecord."qtd_production_record">,DetailProduction' +
              ',2)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBdsProductionOrder: TfrxDBDataset
    UserName = 'ProductionOrder'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_production_order=cod_production_order'
      'des_production_order=des_production_order'
      'dte_production=dte_production')
    DataSet = dm.qryTabProductionOrder
    BCDToCurrency = False
    Left = 480
    Top = 64
  end
  object frxDBdsProductionRecord: TfrxDBDataset
    UserName = 'ProductionRecord'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_item=cod_item'
      'des_item=des_item'
      'qtd_production_record=qtd_production_record'
      'cod_production_order=cod_production_order')
    DataSet = dm.qryTabProductionRecord
    BCDToCurrency = False
    Left = 360
    Top = 144
  end
  object tbMemDate: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 312
    Top = 272
    object tbMemDatedtStart: TDateField
      FieldName = 'dtStart'
    end
    object tbMemDatedtEnd: TDateField
      FieldName = 'dtEnd'
    end
  end
  object frxDBdsMemdate: TfrxDBDataset
    UserName = 'Memdate'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dtStart=dtStart'
      'dtEnd=dtEnd')
    DataSet = tbMemDate
    BCDToCurrency = False
    Left = 448
    Top = 312
  end
end
