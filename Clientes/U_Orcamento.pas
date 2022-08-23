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
  FireDAC.Comp.Client, Data.Bind.DBScope, Datasnap.Provider;

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
    txt_descr: TEdit;
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
    LinkControlToField4: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    DataSource1: TDataSource;
    FDTablepcpid_produto: TFDAutoIncField;
    FDTablepcpcliente: TWideStringField;
    FDTablepcpqtde: TWideStringField;
    FDTablepcpdescricao: TWideStringField;
    FDTablepcpdt_entrega_final: TWideStringField;
    FDTablepcpvalor: TWideStringField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    FDTablepcpData: TWideStringField;
    FDTablepcpid_pedido: TSmallintField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTablepcpBeforePost(DataSet: TDataSet);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure FDTablepcpBeforeCancel(DataSet: TDataSet);
    procedure FDTablepcpBeforeDelete(DataSet: TDataSet);

  private

  public
    procedure Limpar;
     procedure Desbloqueia;
     Procedure Bloqueia;
  end;

var
  Cad_Orcamento: TCad_Orcamento;

implementation

{$R *.dfm}

uses U_Clientes, U_Cadastro;


procedure TCad_Orcamento.Bloqueia;
begin
txt_data.Enabled := false;
txt_n.Enabled := false;
txt_qr.Enabled := false;
txt_nome.Enabled := false;
txt_vlr.Enabled := false;
end;

procedure TCad_Orcamento.btn_cancelarClick(Sender: TObject);
begin
FDTablepcp.Cancel;
end;

procedure TCad_Orcamento.btn_editarClick(Sender: TObject);
begin
FDTablepcp.Edit;
end;

procedure TCad_Orcamento.btn_excluirClick(Sender: TObject);
begin
FDTablepcp.Delete;
Limpar;
Bloqueia;
end;

procedure TCad_Orcamento.btn_novoClick(Sender: TObject);
begin
Limpar; //Procedure
FDTablepcp.Insert;
Desbloqueia;

end;

procedure TCad_Orcamento.Desbloqueia;
begin
txt_data.Enabled := True;
txt_n.Enabled := True;
txt_qr.Enabled := True;
txt_nome.Enabled := True;
txt_vlr.Enabled := True;
txt_qtde.Enabled := True;
txt_descr.Enabled := True;

end;

procedure TCad_Orcamento.FDTablepcpBeforeCancel(DataSet: TDataSet);
begin
Bloqueia;
end;

procedure TCad_Orcamento.FDTablepcpBeforeDelete(DataSet: TDataSet);
begin
Limpar;
Bloqueia;
end;


procedure TCad_Orcamento.FDTablepcpBeforePost(DataSet: TDataSet);
begin
FDTablepcp.FieldByName('Data').value := txt_data.text;
FDTablepcp.FieldByName('id_pedido').value := txt_n.text;
//FDTablepcp.FieldByName('id_produto').value := txt_qr.text;
FDTablepcp.FieldByName('cliente').value :=txt_nome.text;
FDTablepcp.FieldByName('descricao').value :=txt_descr.text;
FDTablepcp.FieldByName('qtde').value := txt_qtde.text;
FDTablepcp.FieldByName('valor').value := txt_vlr.text;
//FDTablepcp.FieldByName('check_entrega').value := cb_entregue.checked = True
FDTablepcp.FieldByName('dt_entrega_final').value := txt_dtEntrega.text;


end;

procedure TCad_Orcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Cad_Orcamento.Hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

procedure TCad_Orcamento.Limpar;
begin
cb_entregue.checked := False;
txt_data.Text := '';
txt_n.text := '';
txt_qr.text := '';
txt_nome.text := '';
txt_vlr.text := '';
txt_qtde.text := '';
txt_descr.text := '';

end;
end.


