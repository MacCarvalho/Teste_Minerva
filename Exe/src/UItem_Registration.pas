unit UItem_Registration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Comp.Client;

type
  TfrmItem_Registration = class(TForm)
    eddes_item: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCod_item: TEdit;
    grid_item: TDBGrid;
    Panel1: TPanel;
    btDelete: TButton;
    btSave: TButton;
    btUpdate: TButton;
    btInsert: TButton;
    btCancel: TButton;
    dsGrid_Item: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure dsGrid_ItemDataChange(Sender: TObject; Field: TField);
    procedure eddes_itemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btUpdateClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
  private
    { Private declarations }
    QueryTabItem: TFDQuery;

  public
    { Public declarations }

    procedure OpenQuery;
    procedure CloseQuery;
    procedure ResetButtons;
    procedure ForceUpdate;
    procedure GetValues;
    procedure EnableEditing;
  end;

var
  frmItem_Registration: TfrmItem_Registration;

implementation

{$R *.dfm}

uses Udm;

{ TfrmItem_Registration }

procedure TfrmItem_Registration.btCancelClick(Sender: TObject);
begin
  ResetButtons;
  GetValues;
end;

procedure TfrmItem_Registration.btDeleteClick(Sender: TObject);
begin
  QueryTabItem.Close;
  QueryTabItem.SQL.Text := 'delete from [dbo].[tab-item] where cod_item = ' +
    edCod_item.Text;
  QueryTabItem.ExecSQL;
  ForceUpdate;

end;

procedure TfrmItem_Registration.btInsertClick(Sender: TObject);
begin
  edCod_item.Text := '0';
  eddes_item.Clear;
  eddes_item.SetFocus;
  // Controla a visibilidade dos botoes;
  btDelete.Visible := false;
  btSave.Visible := true;
  btInsert.Visible := false;
  btCancel.Visible := true;
end;

procedure TfrmItem_Registration.btSaveClick(Sender: TObject);
begin

  QueryTabItem.Close;
  QueryTabItem.SQL.Text := 'insert into [dbo].[tab-item] (des_item) values(' +
    QuotedStr(eddes_item.Text) + ')';
  QueryTabItem.ExecSQL;
  ForceUpdate;

end;

procedure TfrmItem_Registration.btUpdateClick(Sender: TObject);
begin
  QueryTabItem.Close;
  QueryTabItem.SQL.Text := 'update [dbo].[tab-item] set des_item = ' +
    QuotedStr(eddes_item.Text) + ' where cod_item = ' + edCod_item.Text;
  QueryTabItem.ExecSQL;
  ForceUpdate;

end;

procedure TfrmItem_Registration.CloseQuery;
begin
  // Destroy Query
  QueryTabItem.Close;
  QueryTabItem.Free;
end;

procedure TfrmItem_Registration.dsGrid_ItemDataChange(Sender: TObject;
  Field: TField);
begin
  GetValues;
end;

procedure TfrmItem_Registration.eddes_itemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableEditing;
end;

procedure TfrmItem_Registration.EnableEditing;
begin
  if (strtoint(edCod_item.Text) > 0) then
  begin
    btUpdate.Visible := true;
    btCancel.Visible := true;
  end
  else
  begin
    btUpdate.Visible := false;
    btCancel.Visible := false;
  end;

end;

procedure TfrmItem_Registration.ForceUpdate;
begin
  QueryTabItem.Close;
  QueryTabItem.SQL.Text :=
    'SELECT [cod_item], [des_item] FROM [dbo].[tab-item]';
  QueryTabItem.Open;
  ResetButtons;
end;

procedure TfrmItem_Registration.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CloseQuery;
end;

procedure TfrmItem_Registration.FormShow(Sender: TObject);
begin
  OpenQuery;
end;

procedure TfrmItem_Registration.GetValues;
begin
  eddes_item.Text := QueryTabItem.FieldByName('des_item').AsString;
  edCod_item.Text := QueryTabItem.FieldByName('cod_item').AsString;
end;

procedure TfrmItem_Registration.OpenQuery;
begin
  // Create query
  QueryTabItem := TFDQuery.Create(nil);
  try
    QueryTabItem.Connection := dm.Connection;
    dsGrid_Item.DataSet := QueryTabItem;
    QueryTabItem.SQL.Text :=
      'SELECT [cod_item], [des_item] FROM [dbo].[tab-item]';
    // Defina a consulta SQL desejada
    QueryTabItem.Open; // Execute a consulta
  except
    on E: Exception do
    begin
      // Trate a exceção conforme necessário
      ShowMessage('Erro: ' + E.Message);
      QueryTabItem.Close;
      QueryTabItem.Free;
    end;
  end;

end;

procedure TfrmItem_Registration.ResetButtons;
begin
  btDelete.Visible := true;
  btSave.Visible := false;
  btUpdate.Visible := false;
  btInsert.Visible := true;
  btCancel.Visible := false;
end;

end.
