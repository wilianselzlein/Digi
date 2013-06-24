unit UDataMod;

interface

uses
  SysUtils, Classes, DB, DBClient, MConnect, SConnect, Windows, IniFiles, Forms,
  Variants, Dialogs, DateUtils, Graphics, ImgList, Controls, DBCtrls,
  Data.DBXDataSnap, IndyPeerImpl, Data.DBXCommon, Datasnap.DSConnect,
  Data.SqlExpr, Data.FMTBcd, Data.DBXFirebird, Datasnap.Provider, frxClass,
  frxDBSet, frxExportImage, frxExportCSV, frxExportPDF, frxGradient, Vcl.ExtDlgs,
  Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom, Xml.XMLDoc;

type
  TDm = class(TDataModule)
    CDSProduto: TClientDataSet;
    CDSProdutoTMax: TAggregateField;
    OpenDialog: TOpenDialog;
    ImageList1: TImageList;
    ImageList2: TImageList;
    SQLConnection: TSQLConnection;
    QProduto: TSQLDataSet;
    DSPProduto: TDataSetProvider;
    QProdutoID: TIntegerField;
    QProdutoDESCRICAO: TStringField;
    QProdutoNOME: TStringField;
    QProdutoBARRAS: TStringField;
    QProdutoPRECO: TFMTBCDField;
    CDSProdutoID: TIntegerField;
    CDSProdutoDESCRICAO: TStringField;
    CDSProdutoNOME: TStringField;
    CDSProdutoBARRAS: TStringField;
    CDSProdutoPRECO: TFMTBCDField;
    QExec: TSQLQuery;
    CDSCliente: TClientDataSet;
    CDSClienteTMax: TAggregateField;
    QCliente: TSQLDataSet;
    DSPCliente: TDataSetProvider;
    QClienteID: TIntegerField;
    QClienteNOME: TStringField;
    QClienteCIDADE: TStringField;
    QClienteTELEFONE: TStringField;
    CDSClienteID: TIntegerField;
    CDSClienteNOME: TStringField;
    CDSClienteCIDADE: TStringField;
    CDSClienteTELEFONE: TStringField;
    DSQVenda: TDataSource;
    CDSVenda: TClientDataSet;
    CDSVendaTMax: TAggregateField;
    QVenda: TSQLDataSet;
    DSPVenda: TDataSetProvider;
    QVendaID: TIntegerField;
    QVendaCLIENTES_ID: TIntegerField;
    QVendaDATAVENDA: TDateField;
    QVendaTOTALVENDIDO: TFMTBCDField;
    QVendaOBS: TBlobField;
    CDSVendaID: TIntegerField;
    CDSVendaCLIENTES_ID: TIntegerField;
    CDSVendaDATAVENDA: TDateField;
    CDSVendaTOTALVENDIDO: TFMTBCDField;
    CDSVendaOBS: TBlobField;
    CDSItemVenda: TClientDataSet;
    CDSItemVendaTMax: TAggregateField;
    QItemVenda: TSQLDataSet;
    QItemVendaITEM: TIntegerField;
    QItemVendaVENDA_ID: TIntegerField;
    QItemVendaPRODUTOS_ID: TIntegerField;
    QItemVendaQUANTIDADE: TFMTBCDField;
    QItemVendaPRECO: TFMTBCDField;
    CDSVendaQItemVenda: TDataSetField;
    CDSTroca: TClientDataSet;
    CDSTrocaTMax: TAggregateField;
    QTroca: TSQLDataSet;
    QTrocaID: TIntegerField;
    QTrocaDATATROCA: TDateField;
    QTrocaTOTALTROCADO: TFMTBCDField;
    QTrocaOBS: TBlobField;
    CDSTrocaID: TIntegerField;
    CDSTrocaDATATROCA: TDateField;
    CDSTrocaTOTALTROCADO: TFMTBCDField;
    CDSTrocaOBS: TBlobField;
    DSQTroca: TDataSource;
    QItemTroca: TSQLDataSet;
    CDSItemTroca: TClientDataSet;
    CDSItemTrocaTMax: TAggregateField;
    QItemTrocaITEM: TIntegerField;
    QItemTrocaTROCA_ID: TIntegerField;
    QItemTrocaPRODUTOS_ID: TIntegerField;
    QItemTrocaQUANTIDADE: TFMTBCDField;
    QItemTrocaPRECO: TFMTBCDField;
    CDSItemVendaITEM: TIntegerField;
    CDSItemVendaVENDA_ID: TIntegerField;
    CDSItemVendaPRODUTOS_ID: TIntegerField;
    CDSItemVendaQUANTIDADE: TFMTBCDField;
    CDSItemVendaPRECO: TFMTBCDField;
    CDSItemTrocaITEM: TIntegerField;
    CDSItemTrocaTROCA_ID: TIntegerField;
    CDSItemTrocaPRODUTOS_ID: TIntegerField;
    CDSItemTrocaQUANTIDADE: TFMTBCDField;
    CDSItemTrocaPRECO: TFMTBCDField;
    CDSItemVendaLKPProduto: TStringField;
    CDSVendaLKPCliente: TStringField;
    CDSItemTrocaLKPProduto: TStringField;
    CDSItemVendaTotal: TFloatField;
    CDSItemVendaTTotal: TAggregateField;
    CDSTrocaQItemTroca: TDataSetField;
    DSPTroca: TDataSetProvider;
    CDSItemTrocaTTotal: TAggregateField;
    CDSItemTrocaTotal: TFloatField;
    CDSVendaTroca: TClientDataSet;
    QVendaTroca: TSQLDataSet;
    DSPVendaTroca: TDataSetProvider;
    QVendaTrocaVENDA_ID: TIntegerField;
    QVendaTrocaTROCA_ID: TIntegerField;
    CDSVendaTrocaVENDA_ID: TIntegerField;
    CDSVendaTrocaTROCA_ID: TIntegerField;
    CDSVendaTrocaCliente: TStringField;
    DSTroca: TDataSource;
    DSVendaTroca: TDataSource;
    CDSVendaTrocaDataVenda: TDateTimeField;
    CDSVendaTrocaTotalVenda: TFloatField;
    DSVenda: TDataSource;
    frxProduto: TfrxReport;
    frxDBProduto: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    frxCSVExport: TfrxCSVExport;
    frxJPEGExport: TfrxJPEGExport;
    frxGradientObject1: TfrxGradientObject;
    frxCliente: TfrxReport;
    frxDBCliente: TfrxDBDataset;
    frxVenda: TfrxReport;
    frxDBVenda: TfrxDBDataset;
    frxDBItemVenda: TfrxDBDataset;
    frxTroca: TfrxReport;
    frxDBTroca: TfrxDBDataset;
    frxDBItemTroca: TfrxDBDataset;
    frxDBVendaTroca: TfrxDBDataset;
    QGrafProduto1: TSQLDataSet;
    QGrafProduto1NOME: TStringField;
    QGrafProduto1VALOR: TFMTBCDField;
    QGrafProduto2: TSQLDataSet;
    QGrafProduto2NOME: TStringField;
    QGrafProduto2VALOR: TFMTBCDField;
    QGrafCliente1: TSQLDataSet;
    QGrafCliente2: TSQLDataSet;
    QGrafCliente1NOME: TStringField;
    QGrafCliente1VALOR: TIntegerField;
    QGrafCliente2NOME: TStringField;
    QGrafCliente2VALOR: TFMTBCDField;
    QGrafVenda1: TSQLDataSet;
    QGrafVenda1DATA: TDateField;
    QGrafVenda1VENDAS: TFMTBCDField;
    QGrafVenda1TROCAS: TFMTBCDField;
    SavePictureDialog: TSavePictureDialog;
    frxVendaTroca: TfrxReport;
    XMLDoc: TXMLDocument;
    QProdutoESTOQUE: TFMTBCDField;
    CDSProdutoESTOQUE: TFMTBCDField;
    procedure CDSProdutoAfterDelete(DataSet: TDataSet);
    procedure CDSProdutoAfterPost(DataSet: TDataSet);
    procedure CDSProdutoNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDSProdutoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSClienteAfterDelete(DataSet: TDataSet);
    procedure CDSClienteAfterPost(DataSet: TDataSet);
    procedure CDSClienteNewRecord(DataSet: TDataSet);
    procedure CDSItemVendaCalcFields(DataSet: TDataSet);
    procedure CDSVendaAfterDelete(DataSet: TDataSet);
    procedure CDSVendaAfterPost(DataSet: TDataSet);
    procedure CDSVendaNewRecord(DataSet: TDataSet);
    procedure CDSItemVendaNewRecord(DataSet: TDataSet);
    procedure CDSTrocaNewRecord(DataSet: TDataSet);
    procedure CDSItemTrocaNewRecord(DataSet: TDataSet);
    procedure CDSTrocaAfterDelete(DataSet: TDataSet);
    procedure CDSTrocaAfterPost(DataSet: TDataSet);
    procedure CDSItemTrocaCalcFields(DataSet: TDataSet);
    procedure CDSVendaTrocaAfterDelete(DataSet: TDataSet);
    procedure CDSVendaTrocaAfterPost(DataSet: TDataSet);
    procedure CDSVendaTrocaNewRecord(DataSet: TDataSet);
    procedure CDSTrocaBeforeDelete(DataSet: TDataSet);
    procedure CDSItemVendaAfterDelete(DataSet: TDataSet);
    procedure CDSItemTrocaAfterDelete(DataSet: TDataSet);
    procedure CDSTrocaAfterCancel(DataSet: TDataSet);
    procedure CDSVendaAfterCancel(DataSet: TDataSet);
    procedure CDSVendaBeforeDelete(DataSet: TDataSet);
    procedure CDSItemTrocaPRODUTOS_IDChange(Sender: TField);
    procedure CDSItemVendaPRODUTOS_IDChange(Sender: TField);
    procedure CDSItemVendaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

uses UFuncoes;

procedure TDm.CDSClienteAfterDelete(DataSet: TDataSet);
begin
  CDSCliente.ApplyUpdates(0);
end;

procedure TDm.CDSClienteAfterPost(DataSet: TDataSet);
begin
  CDSCliente.ApplyUpdates(0);
end;

procedure TDm.CDSClienteNewRecord(DataSet: TDataSet);
begin
  CDSClienteID.AsInteger := StrToIntDef(VarToStr(DM.CDSClienteTMax.Value),0)+1;
end;

procedure TDm.CDSItemTrocaAfterDelete(DataSet: TDataSet);
begin
  StatusCds(CDSTroca);
  CDSTrocaTOTALTROCADO.AsFloat := StrToFloatDef(VarToStr(CDSItemTrocaTTotal.Value), 0);
end;

procedure TDm.CDSItemTrocaCalcFields(DataSet: TDataSet);
begin
  CDSItemTrocaTotal.AsFloat := CDSItemTrocaQUANTIDADE.AsFloat * CDSItemTrocaPRECO.AsFloat;
  if CDSTroca.State in [dsEdit, dsInsert] then
    CDSTrocaTOTALTROCADO.AsFloat := StrToFloatDef(VarToStr(CDSItemTrocaTTotal.Value), 0);
end;

procedure TDm.CDSItemTrocaNewRecord(DataSet: TDataSet);
begin
  CDSItemTrocaITEM.AsInteger := StrToIntDef(VarToStr(DM.CDSItemTrocaTMax.Value),0)+1;
  CDSItemTrocaTROCA_ID.AsInteger := CDSTrocaID.AsInteger;
end;

procedure TDm.CDSItemTrocaPRODUTOS_IDChange(Sender: TField);
begin
  CDSItemTrocaPRECO.AsFloat := CDSProdutoPRECO.AsFloat;
end;

procedure TDm.CDSItemVendaAfterDelete(DataSet: TDataSet);
begin
  StatusCDS(CDSVenda);
  CDSVendaTOTALVENDIDO.AsFloat := StrToFloatDef(VarToStr(CDSItemVendaTTotal.Value), 0);
end;

procedure TDm.CDSItemVendaBeforePost(DataSet: TDataSet);
begin
  if CDSItemVendaQUANTIDADE.AsFloat > GetEstoque(CDSItemVendaPRODUTOS_ID.AsInteger) then //ver possibilidade de localizar na troca
  begin
    raise Exception.Create('Estoque insuficiente para essa venda!');
    Abort;
  end;
end;

procedure TDm.CDSItemVendaCalcFields(DataSet: TDataSet);
begin
  CDSItemVendaTotal.AsFloat := CDSItemVendaQUANTIDADE.AsFloat * CDSItemVendaPRECO.AsFloat;
  if CDSVenda.State in [dsEdit, dsInsert] then
    CDSVendaTOTALVENDIDO.AsFloat := StrToFloatDef(VarToStr(CDSItemVendaTTotal.Value), 0);
end;

procedure TDm.CDSItemVendaNewRecord(DataSet: TDataSet);
begin
  CDSItemVendaITEM.AsInteger := StrToIntDef(VarToStr(CDSItemVendaTMax.Value),0)+1;
  CDSItemVendaVENDA_ID.AsInteger := CDSVendaID.AsInteger;
  CDSItemVendaQUANTIDADE.AsInteger := 1;
end;

procedure TDm.CDSItemVendaPRODUTOS_IDChange(Sender: TField);
begin
  CDSItemVendaPRECO.AsFloat := CDSProdutoPRECO.AsFloat;
end;

procedure TDm.CDSProdutoAfterDelete(DataSet: TDataSet);
begin
  CDSProduto.ApplyUpdates(0);
end;

procedure TDm.CDSProdutoAfterPost(DataSet: TDataSet);
begin
  CDSProduto.ApplyUpdates(0);
end;

procedure TDm.CDSProdutoNewRecord(DataSet: TDataSet);
begin
  CDSProdutoID.AsInteger := StrToIntDef(VarToStr(DM.CDSProdutoTMax.Value),0)+1;
end;

procedure TDm.CDSProdutoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  showmessage('Erro:' + E.Message);
end;

procedure TDm.CDSTrocaAfterCancel(DataSet: TDataSet);
begin
  CDSTroca.CancelUpdates;
end;

procedure TDm.CDSTrocaAfterDelete(DataSet: TDataSet);
begin
  CDSTroca.ApplyUpdates(0);
end;

procedure TDm.CDSTrocaAfterPost(DataSet: TDataSet);
begin
  CDSTroca.ApplyUpdates(0);
end;

procedure TDm.CDSTrocaBeforeDelete(DataSet: TDataSet);
begin
  RemoverVendaTroca(dm.CDSTrocaID.AsInteger);
end;

procedure TDm.CDSTrocaNewRecord(DataSet: TDataSet);
begin
  CDSTrocaID.AsInteger := StrToIntDef(VarToStr(DM.CDSTrocaTMax.Value),0)+1;
  CDSTrocaDATATROCA.AsDateTime := Date;
end;

procedure TDm.CDSVendaAfterCancel(DataSet: TDataSet);
begin
  CDSVenda.CancelUpdates;
end;

procedure TDm.CDSVendaAfterDelete(DataSet: TDataSet);
begin
  CDSVenda.ApplyUpdates(0);
  CDSTroca.Close;
  CDSTroca.Open;
end;

procedure TDm.CDSVendaAfterPost(DataSet: TDataSet);
begin
  CDSVenda.ApplyUpdates(0);
end;

procedure TDm.CDSVendaBeforeDelete(DataSet: TDataSet);
begin
  if application.messagebox('Ao excluir a venda, ser� tamb�m excluido a(s) rela��o(�es) com a troca e a troca. Deseja continuar?', PChar(CAPTIONINPUTBOX), mb_yesno + MB_ICONQUESTION) = mrno then
    abort
  else
  begin
    if (Dm.CDSVendaTrocaTROCA_ID.AsInteger > 0) and (Dm.CDSTrocaID.AsInteger = Dm.CDSVendaTrocaTROCA_ID.AsInteger) then
    begin
      ExecSQL('DELETE FROM VENDATROCA WHERE TROCA_ID = ' + dm.CDSVendaTrocaTROCA_ID.AsString, True);
      ExecSQL('DELETE FROM TROCA WHERE ID = ' + dm.CDSVendaTrocaTROCA_ID.AsString, True);
    end;
  end;
end;

procedure TDm.CDSVendaNewRecord(DataSet: TDataSet);
begin
  CDSVendaID.AsInteger := StrToIntDef(VarToStr(DM.CDSVendaTMax.Value),0)+1;
  CDSVendaDATAVENDA.AsDateTime := Date;
end;

procedure TDm.CDSVendaTrocaAfterDelete(DataSet: TDataSet);
begin
  CDSVendaTroca.ApplyUpdates(0);
end;

procedure TDm.CDSVendaTrocaAfterPost(DataSet: TDataSet);
begin
  CDSVendaTroca.ApplyUpdates(0);
end;

procedure TDm.CDSVendaTrocaNewRecord(DataSet: TDataSet);
begin
  dm.CDSVendaTrocaVENDA_ID.AsInteger := dm.CDSVendaID.AsInteger;
  dm.CDSVendaTrocaTROCA_ID.AsInteger := dm.CDSTrocaID.AsInteger;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
const ARQ: String = 'Digi.ini';
var v: byte;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + ARQ) then
    SQLConnection.params.LoadFromFile(ExtractFilePath(Application.ExeName) + ARQ)
  else
    SQLConnection.params.SaveToFile(ExtractFilePath(Application.ExeName) + ARQ);
  SQLConnection.Connected := True;

  try
    v := ExecSql('SELECT ID FROM VERSAO');
  except
    v := 0;
  end;
  if v = 0 then
  begin
    ExecSQL('CREATE TABLE VERSAO (ID INTEGER NOT NULL);', True);
    ExecSQL('ALTER TABLE VERSAO ADD CONSTRAINT PK_VERSAO PRIMARY KEY (ID);', True);
    ExecSQL('INSERT INTO VERSAO (ID) VALUES (1);', True);
  end;
  if v < 2 then
    ExecSQL('ALTER TABLE PRODUTOS ADD ESTOQUE NUMERIC(15,4) DEFAULT 0;', True);
  if v < 3 then
  begin
    ExecSQL(
      ' CREATE OR ALTER TRIGGER ALTITEMTROCA FOR ITEMTROCA ACTIVE BEFORE UPDATE POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque - Old.Quantidade + New.Quantidade where Id = Old.Produtos_Id; ' + #13 +
      ' end', True);
    ExecSQL(
      ' CREATE OR ALTER TRIGGER DELITEMTROCA FOR ITEMTROCA ACTIVE AFTER DELETE POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque - Old.Quantidade where Id = Old.Produtos_Id; ' + #13 +
      ' end', True);
    ExecSQL(
      ' CREATE OR ALTER TRIGGER INSITEMTROCA FOR ITEMTROCA ACTIVE AFTER INSERT POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque + New.Quantidade where Id = New.Produtos_Id; ' + #13 +
      ' end', True);

    ExecSQL(
      ' CREATE OR ALTER TRIGGER ALTITEMVENDA FOR ITEMVENDA ACTIVE BEFORE UPDATE POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque + Old.Quantidade - New.Quantidade where Id = Old.Produtos_Id; ' + #13 +
      ' end', True);
    ExecSQL(
      ' CREATE OR ALTER TRIGGER DELITEMVENDA FOR ITEMVENDA ACTIVE AFTER DELETE POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque + Old.Quantidade where Id = Old.Produtos_Id; ' + #13 +
      ' end', True);
    ExecSQL(
      ' CREATE OR ALTER TRIGGER INSITEMVENDA FOR ITEMVENDA ACTIVE AFTER INSERT POSITION 0 as ' + #13 +
      ' Begin ' + #13 +
      '   Update Produtos Set Estoque = Estoque - New.Quantidade where Id = New.Produtos_Id; ' + #13 +
      ' end', True);
  end;
  ExecSQL('UPDATE VERSAO SET ID = 3;', True);
end;

end.

