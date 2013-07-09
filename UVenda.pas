unit UVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBLookup;

type
  TFVenda = class(TFPadrao)
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DSItem: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Imprimir; override;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavAcaoClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVenda: TFVenda;

implementation

{$R *.dfm}

uses UDataMod, UFuncoes, UProduto;

procedure TFVenda.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TFVenda.DBGrid1EditButtonClick(Sender: TObject);
begin
  inherited;
  StatusCDS(dm.CDSItemVenda);
  DM.CDSItemVendaPRODUTOS_ID.AsInteger := ConsultaProduto;
end;

procedure TFVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F9 then
    DBGrid1EditButtonClick(nil);
end;

procedure TFVenda.DBNavAcaoClick(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbDelete:
    begin
      dm.CDSVenda.Close;
      dm.CDSTroca.Close;
      dm.CDSVendaTroca.Close;
      dm.CDSVenda.Open;
      dm.CDSTroca.Open;
      dm.CDSVendaTroca.Open;
      dm.CDSVenda.Last;
    end;
  end;
end;

procedure TFVenda.Imprimir;
begin
  with dm.CDSVenda do
  begin
    Filtered := False;
    with FiltroData do
      Filter := 'DATAVENDA >= ' + QuotedStr(DateToStr(Inicial)) + ' AND DATAVENDA <= ' + QuotedStr(DateToStr(Final));
    Filtered := True;
    dm.frxVenda.ShowReport;
    Filtered := False;
  end;
end;

end.
