unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls,
  UReport, UItem_Registration;

type
  TfrmMain = class(TForm)
    btItem: TButton;
    Panel1: TPanel;
    dtStart: TDateTimePicker;
    dtEnd: TDateTimePicker;
    btGetReport: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btGetReportClick(Sender: TObject);
    procedure btItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btGetReportClick(Sender: TObject);
begin
  Application.CreateForm(TfrmReport, frmReport);
  frmReport.GetReport(dtStart.Date, dtEnd.Date);
end;

procedure TfrmMain.btItemClick(Sender: TObject);
begin
  Application.CreateForm(TfrmItem_Registration, frmItem_Registration);
  frmItem_Registration.Show;
end;

end.
