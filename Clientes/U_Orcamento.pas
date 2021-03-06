unit U_Orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, cefvcl, Vcl.Imaging.jpeg, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.DBScope;

type
  TCad_Orcamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txt_data: TEdit;
    txt_n: TEdit;
    txt_qr: TEdit;
    txt_qtde: TEdit;
    txt_nome: TEdit;
    txt_end: TEdit;
    Label9: TLabel;
    txt_vlr: TEdit;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    cb_entregue: TCheckBox;
    Label10: TLabel;
    txt_dtEntrega: TEdit;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btn_filtro: TButton;
    txt_filtro: TEdit;
    Label11: TLabel;
    FD_Con_PCP: TFDConnection;
    BindSourcepcp: TBindSourceDB;
    FDTablepcp: TFDTable;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    FDStoredProc1: TFDStoredProc;
    DataSource1: TDataSource;
    FDTablepcpid_produto: TFDAutoIncField;
    FDTablepcpcliente: TWideStringField;
    FDTablepcpqtde: TWideStringField;
    FDTablepcpdescricao: TWideStringField;
    FDTablepcpdt_entrega_final: TWideStringField;
    FDTablepcpvalor: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTablepcpBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Orcamento: TCad_Orcamento;

implementation

{$R *.dfm}

uses U_Clientes, U_Cadastro;


procedure TCad_Orcamento.FDTablepcpBeforePost(DataSet: TDataSet);
begin
FDTablepcp.FieldByName('data').value := txt_data.text;

end;

procedure TCad_Orcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Cad_Orcamento.Hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

end.
