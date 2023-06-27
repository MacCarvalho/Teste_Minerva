object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Menu Inicial'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 21
  object btItem: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 65
    Caption = 'Cadastrar itens'
    TabOrder = 0
    OnClick = btItemClick
  end
  object Panel1: TPanel
    Left = 88
    Top = 344
    Width = 473
    Height = 89
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 137
      Height = 21
      Caption = 'Selecione o periodo'
    end
    object Label2: TLabel
      Left = 131
      Top = 47
      Width = 8
      Height = 21
      Caption = 'a'
    end
    object dtStart: TDateTimePicker
      Left = 8
      Top = 44
      Width = 113
      Height = 29
      Date = 45103.000000000000000000
      Time = 0.843916134261235100
      TabOrder = 0
    end
    object dtEnd: TDateTimePicker
      Left = 151
      Top = 44
      Width = 113
      Height = 29
      Date = 45103.000000000000000000
      Time = 0.843916134261235100
      TabOrder = 1
    end
    object btGetReport: TButton
      Left = 296
      Top = 16
      Width = 155
      Height = 57
      Caption = 'Gerar Relatorio'
      TabOrder = 2
      OnClick = btGetReportClick
    end
  end
end
