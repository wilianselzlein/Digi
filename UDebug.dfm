object FDebug: TFDebug
  Left = 0
  Top = 0
  Caption = 'Debug'
  ClientHeight = 288
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 288
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = DBGrid1
        Row = 0
      end
      item
        Column = 1
        Control = DBGrid2
        Row = 0
      end
      item
        Column = 0
        Control = DBGrid3
        Row = 1
      end
      item
        Column = 1
        Control = DBGrid4
        Row = 1
      end
      item
        Column = 0
        Control = DBGrid5
        Row = 2
      end
      item
        Column = 1
        Control = DBGrid6
        Row = 2
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitHeight = 294
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 322
      Height = 83
      Align = alClient
      DataSource = Dm.DSVenda
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 323
      Top = 1
      Width = 322
      Height = 83
      Align = alClient
      DataSource = Dm.DSItemVenda
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid3: TDBGrid
      Left = 1
      Top = 84
      Width = 322
      Height = 83
      Align = alClient
      DataSource = Dm.DSTroca
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid4: TDBGrid
      Left = 323
      Top = 84
      Width = 322
      Height = 83
      Align = alClient
      DataSource = Dm.DSItemTroca
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid5: TDBGrid
      Left = 1
      Top = 167
      Width = 322
      Height = 120
      Align = alClient
      DataSource = Dm.DSVendaTroca
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid6: TDBGrid
      Left = 323
      Top = 167
      Width = 322
      Height = 120
      Align = alClient
      DataSource = Dm.DSProduto
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
