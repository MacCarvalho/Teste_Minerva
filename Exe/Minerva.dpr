program Minerva;

uses
  Vcl.Forms,
  Umain in 'src\Umain.pas' {frmMain},
  Udm in 'src\Udm.pas' {dm: TDataModule},
  UItem_Registration in 'src\UItem_Registration.pas' {frmItem_Registration},
  UReport in 'src\UReport.pas' {frmReport},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Minerva';
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmReport, frmReport);
  Application.Run;
end.
