object FPadrao: TFPadrao
  Left = 0
  Top = 0
  Caption = '.'
  ClientHeight = 312
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 0
    Top = 30
    Width = 634
    Height = 209
    Align = alClient
    Color = clWhite
    DataSource = DataSource
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridDrawColumnCell
    OnKeyDown = DBGridKeyDown
    OnTitleClick = DBGridTitleClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 30
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      634
      30)
    object Label4: TLabel
      Left = 16
      Top = 6
      Width = 70
      Height = 16
      Caption = 'Pesquisa:'
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
      Width = 340
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = txtPesquisaChange
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBNav: TDBNavigator
      Left = 434
      Top = 1
      Width = 199
      Height = 28
      DataSource = DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Align = alRight
      Flat = True
      Ctl3D = True
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr'#243'ximo'
        #218'ltimo'
        ''
        ''
        ''
        ''
        ''
        'Fechar')
      Kind = dbnHorizontal
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = DBNavClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 634
    Height = 73
    Align = alBottom
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object Label5: TLabel
      Left = 7
      Top = 28
      Width = 14
      Height = 16
      Caption = 'Id'
      FocusControl = txtId
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavAcao: TDBNavigator
      Left = 1
      Top = 1
      Width = 632
      Height = 24
      DataSource = DataSource
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alTop
      Flat = True
      Hints.Strings = (
        'Primeiro'
        'Anterior'
        'Pr'#243'ximo'
        #218'ltimo'
        'Novo Registro F5'
        'Deletar F8'
        'Importar'
        'Salvar F7'
        'Cancelar'
        'Atualizar'
        'Apply updates'
        'Cancel updates')
      Kind = dbnHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = DBNavAcaoClick
    end
    object txtId: TDBEdit
      Left = 7
      Top = 44
      Width = 45
      Height = 21
      DataField = 'ID'
      DataSource = DataSource
      Enabled = False
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  object DataSource: TDataSource
    OnDataChange = DataSourceDataChange
    Left = 32
    Top = 96
  end
end
