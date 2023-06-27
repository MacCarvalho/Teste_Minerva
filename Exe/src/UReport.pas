unit UReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Udm,
  FireDAC.Stan.Param, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmReport = class(TForm)
    ReportProduction: TfrxReport;
    frxDBdsProductionOrder: TfrxDBDataset;
    frxDBdsProductionRecord: TfrxDBDataset;
    tbMemDate: TFDMemTable;
    tbMemDatedtStart: TDateField;
    tbMemDatedtEnd: TDateField;
    frxDBdsMemdate: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetReport(dtStart: TDate; dtEnd: TDate);
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}
{ TfrmReport }

procedure TfrmReport.GetReport(dtStart, dtEnd: TDate);
begin
  dm.qryTabProductionOrder.Close;
  dm.qryTabProductionOrder.ParamByName('DTSTART').AsDate := dtStart;
  dm.qryTabProductionOrder.ParamByName('DTFIM').AsDate := dtEnd;
  dm.qryTabProductionOrder.Open();
  //objetivo do MemDataset, é levar os dados corretos da data, e nao exibir apenas a menor e maior do DB
  tbMemDate.CreateDataSet;
  tbMemDate.Append;
  tbMemDatedtStart.Value := dtStart;
  tbMemDatedtEnd.Value := dtEnd;
  tbMemDate.Post;
  ReportProduction.PrepareReport();
  ReportProduction.ShowReport();
end;

end.
