object FDebug: TFDebug
  Left = 0
  Top = 0
  Caption = 'Debug'
  ClientHeight = 294
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 294
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
    ExplicitLeft = 144
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 322
      Height = 146
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
      Height = 146
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
      Top = 147
      Width = 322
      Height = 146
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
      Top = 147
      Width = 322
      Height = 146
      Align = alClient
      DataSource = Dm.DSItemTroca
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
