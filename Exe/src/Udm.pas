unit Udm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.ODBCBase, Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    Connection: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    qryTabProductionOrder: TFDQuery;
    qryTabProductionOrdercod_production_order: TFDAutoIncField;
    qryTabProductionOrderdes_production_order: TStringField;
    qryTabProductionRecord: TFDQuery;
    qryTabProductionRecordcod_item: TFDAutoIncField;
    qryTabProductionRecorddes_item: TStringField;
    qryTabProductionRecordqtd_production_record: TFloatField;
    qryTabProductionRecordcod_production_order: TIntegerField;
    qryTabProductionOrderdte_production: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
