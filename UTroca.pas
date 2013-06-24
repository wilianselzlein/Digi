unit UTroca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBLookup,
  Vcl.ComCtrls, Vcl.ToolWin, Datasnap.DBClient;

type
  TFTroca = class(TFPadrao)
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DSItem: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Splitter2: TSplitter;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    ToolBar1: TToolBar;
    btnAddVenda: TToolButton;
    btnDelVenda: TToolButton;
    ToolButton1: TToolButton;
    procedure Imprimir; override;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnDelVendaClick(Sender: TObject);
    procedure btnAddVendaClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTroca: TFTroca;

implementation

{$R *.dfm}

uses UDataMod, UFuncoes, UVenda, UProduto;

procedure TFTroca.Imprimir;
begin
  with dm.CDSTroca do
  begin
    Filtered := False;
    with FiltroData do
      Filter := 'DATATROCA >= ' + QuotedStr(DateToStr(Inicial)) + ' AND DATATROCA <= ' + QuotedStr(DateToStr(Final));
    Filtered := True;
    dm.frxTroca.ShowReport;
    Filtered := False;
  end;
end;

procedure TFTroca.btnAddVendaClick(Sender: TObject);
var lCds: TClientDataSet;
begin
  inherited;
  if not dm.CDSVendaTroca.Active then
    dm.CDSVendaTroca.Open;

  if dm.CDSVendaTroca.RecordCount > 0 then
    showmessage('Já existe uma venda relacionada a essa troca!')
  else
  begin
    Try
      if FindWindow(nil, 'Vendas') > 0 then
        FVenda.Close;
      FVenda := TFVenda.create(Self);
      FVenda.FormStyle := fsNormal;
      FVenda.Visible := False;
      FVenda.Showmodal;
      lCds := TClientDataSet.Create(nil);
      lCds.data := dm.CDSVendaTroca.data;
      if not lCds.Locate('VENDA_ID', dm.CDSVendaID.AsInteger, [loPartialKey, loCaseInsensitive]) then
      begin
        TesteValorVendaTroca;
        dm.CDSVendaTroca.Append;
        dm.CDSVendaTroca.post;
      end
      else
        ShowMessage('Venda já relacionada em outra troca!');
    Finally
      lCds.Destroy;
      //FVenda.Free;
    End;
  end
end;

procedure TFTroca.btnDelVendaClick(Sender: TObject);
begin
  inherited;
  RemoverVendaTroca(dm.CDSTrocaID.AsInteger);
end;

procedure TFTroca.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TFTroca.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  StatusCDS(dm.CDSItemTroca);
  DM.CDSItemTrocaPRODUTOS_ID.AsInteger := FProduto.ConsultaProduto;
end;

procedure TFTroca.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    DBGrid1EditButtonClick(nil);
end;

end.
