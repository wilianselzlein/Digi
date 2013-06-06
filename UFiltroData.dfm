object FFiltroData: TFFiltroData
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Filtro Relat'#243'rio'
  ClientHeight = 135
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 272
    Height = 113
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      272
      113)
    object Label4: TLabel
      Left = 40
      Top = 6
      Width = 83
      Height = 16
      Caption = 'Data Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 40
      Top = 54
      Width = 76
      Height = 16
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtPesquisa: TEdit
      Left = 88
      Top = 5
      Width = 0
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object txtDataIni: TDateTimePicker
      Left = 40
      Top = 26
      Width = 186
      Height = 21
      Date = 41422.749516377310000000
      Time = 41422.749516377310000000
      TabOrder = 1
    end
    object txtDataFim: TDateTimePicker
      Left = 40
      Top = 74
      Width = 186
      Height = 21
      Date = 41422.749516377310000000
      Time = 41422.749516377310000000
      TabOrder = 2
      OnKeyPress = txtDataFimKeyPress
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 113
    Width = 272
    Height = 22
    Align = alBottom
    AutoSize = True
    ButtonWidth = 124
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    GradientEndColor = clMoneyGreen
    Images = Dm.ImageList1
    List = True
    ShowCaptions = True
    TabOrder = 1
    object btnImp: TToolButton
      Left = 0
      Top = 0
      Caption = 'Visualizar Impress'#227'o'
      ImageIndex = 10
      OnClick = btnImpClick
    end
  end
end
