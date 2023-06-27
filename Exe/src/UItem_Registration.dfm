object frmItem_Registration: TfrmItem_Registration
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de produto'
  ClientHeight = 451
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 8
    Top = 104
    Width = 152
    Height = 21
    Caption = 'Descri'#231#227'o do produto:'
  end
  object Label2: TLabel
    Left = 25
    Top = 77
    Width = 135
    Height = 21
    Alignment = taRightJustify
    Caption = 'C'#243'digo do produto:'
  end
  object eddes_item: TEdit
    Left = 166
    Top = 101
    Width = 313
    Height = 29
    Alignment = taCenter
    TabOrder = 0
    Text = 'eddes_item'
    OnKeyUp = eddes_itemKeyUp
  end
  object edCod_item: TEdit
    Left = 166
    Top = 66
    Width = 313
    Height = 29
    Alignment = taCenter
    Enabled = False
    TabOrder = 1
    Text = '0'
  end
  object grid_item: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 152
    Width = 628
    Height = 296
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsGrid_Item
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cod_item'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'des_item'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 400
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 60
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 624
    object btDelete: TButton
      AlignWithMargins = True
      Left = 528
      Top = 6
      Width = 100
      Height = 48
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Remover'
      TabOrder = 0
      OnClick = btDeleteClick
      ExplicitLeft = 518
    end
    object btSave: TButton
      AlignWithMargins = True
      Left = 226
      Top = 6
      Width = 100
      Height = 48
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Salvar'
      TabOrder = 1
      Visible = False
      OnClick = btSaveClick
      ExplicitTop = 10
    end
    object btUpdate: TButton
      AlignWithMargins = True
      Left = 116
      Top = 6
      Width = 100
      Height = 48
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Atualizar'
      TabOrder = 2
      Visible = False
      OnClick = btUpdateClick
      ExplicitTop = 10
    end
    object btInsert: TButton
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 100
      Height = 48
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Inserir'
      TabOrder = 3
      OnClick = btInsertClick
    end
    object btCancel: TButton
      AlignWithMargins = True
      Left = 334
      Top = 4
      Width = 100
      Height = 52
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 4
      Visible = False
      OnClick = btCancelClick
    end
  end
  object dsGrid_Item: TDataSource
    OnDataChange = dsGrid_ItemDataChange
    Left = 576
    Top = 80
  end
end
