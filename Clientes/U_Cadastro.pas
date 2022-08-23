unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.Controls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.Buttons, Vcl.Bind.Navigator,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  TClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btn_pdf: TButton;
    txt_data: TEdit;
    txt_n: TEdit;
    txt_rev: TEdit;
    txt_tot: TEdit;
    txt_nome: TEdit;
    txt_end: TEdit;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    btn_filtro: TButton;
    txt_filtro: TEdit;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    btn_cancelar: TButton;
    btn_novo: TButton;
    FDStoredProc1: TFDStoredProc;
    DataSource1: TDataSource;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    FDCon_Orc_php: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    BindSourceDB1: TBindSourceDB;
    FDTabletuonmarcenaria_clientes: TFDTable;
    FDTabletuonmarcenaria_clientesid: TFDAutoIncField;
    FDTabletuonmarcenaria_clientesnome: TStringField;
    FDTabletuonmarcenaria_clientesdata: TStringField;
    FDTabletuonmarcenaria_clientesid_pedido: TStringField;
    FDTabletuonmarcenaria_clientesendereco: TStringField;
    FDTabletuonmarcenaria_clientesrev: TStringField;
    FDTabletuonmarcenaria_clientesvalor: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure Tb_clientesBeforePost(DataSet: TDataSet);
    procedure btn_salvarClick(Sender: TObject);
    procedure Tb_clientesBeforeEdit(DataSet: TDataSet);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure FDTabletuonmarcenaria_clientesBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);

  private
    procedure Limpar;
    procedure bloqueia;
    procedure desbloqueia;
    procedure data;
    procedure Uppercase;
    procedure Pg_Principal;
  public

  end;

var
  Clientes: TClientes;

implementation

{$R *.dfm}

uses U_Clientes;

procedure TClientes.bloqueia;
begin
  txt_data.Enabled := false;
  txt_n.Enabled := false;
  txt_rev.Enabled := false;
  txt_tot.Enabled := false;
  txt_nome.Enabled := false;
  txt_end.Enabled := false;

end;

procedure TClientes.btn_cancelarClick(Sender: TObject);
begin
Principal.FDTableclientes.Cancel;
FDTabletuonmarcenaria_clientes.Cancel;
Limpar;

end;

procedure TClientes.btn_editarClick(Sender: TObject);
begin
  desbloqueia;
 Principal.FDTableclientes.Edit;
 FDTabletuonmarcenaria_clientes.Edit;
 ShowMessage('OR�AMENTO EDITADO');
end;

procedure TClientes.btn_excluirClick(Sender: TObject);
begin
Principal.FDTableclientes.Delete;
FDTabletuonmarcenaria_clientes.Delete;
end;

procedure TClientes.btn_novoClick(Sender: TObject);
begin
Principal.FDTableclientes.Insert; //Nome do componete vinculado a TB do BD.
FDTabletuonmarcenaria_clientes.Insert;
desbloqueia;
end;

procedure TClientes.btn_salvarClick(Sender: TObject);
begin
Principal.FDTableclientes.Post;
FDTabletuonmarcenaria_clientes.Post;
ShowMessage('OR�AMENTO CADASTRADO');
Limpar;
bloqueia;
end;

procedure TClientes.data;
begin
var data:String;
begin
  data := txt_data.Text;
  Insert('/',data,3);
  Insert('/',data,6);
end;
end;

procedure TClientes.desbloqueia;
begin
  txt_data.Enabled := true;
  txt_n.Enabled := true;
  txt_rev.Enabled := true;
  txt_tot.Enabled := true;
  txt_nome.Enabled := true;
  txt_end.Enabled := true;
end;

procedure TClientes.FDTabletuonmarcenaria_clientesBeforePost(DataSet: TDataSet);
begin
FDTabletuonmarcenaria_clientes.FieldByName('nome').value := (txt_nome.Text);
FDTabletuonmarcenaria_clientes.FieldByName('data').value := (txt_data.Text);
FDTabletuonmarcenaria_clientes.FieldByName('id_pedido').value := (txt_n.Text);
FDTabletuonmarcenaria_clientes.FieldByName('endereco').value := (txt_end.Text);
FDTabletuonmarcenaria_clientes.FieldByName('rev').value := (txt_rev.Text);
FDTabletuonmarcenaria_clientes.FieldByName('valor').value := (txt_tot.Text);
//FDTabletuonmarcenaria_clientes.FieldByName('anexo').value := (.Text);
end;

procedure TClientes.FormActivate(Sender: TObject);
begin
{FDCon_Orc_php.Connected := True;
FDTabletuonmarcenaria_clientes.Active := True;
Principal.FDConnection1.Connected := True;
Principal.FDTableclientes.Active := True;}
end;

procedure TClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{FDCon_Orc_php.Close;
FDTabletuonmarcenaria_clientes.close;
Principal.FDConnection1.Close;
Principal.FDTableclientes.Close;}
Pg_Principal;
end;

procedure TClientes.Limpar;
begin
  txt_data.Text := '';
  txt_n.Text := '';
  txt_rev.Text := '';
  txt_tot.Text := '';
  txt_nome.Text := '';
  txt_end.Text := '';

end;

procedure TClientes.Pg_Principal;
begin
Clientes.Hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

procedure TClientes.Tb_clientesBeforeEdit(DataSet: TDataSet);
begin
desbloqueia;
end;

procedure TClientes.Tb_clientesBeforePost(DataSet: TDataSet);
begin
  Uppercase;
  Principal.FDTableclientes.FieldByName('Data').Value := (txt_data.Text);
  Principal.FDTableclientes.FieldByName('id_pedido').Value := (txt_n.Text);
  Principal.FDTableclientes.FieldByName('nome').Value := (txt_nome.Text);
  Principal.FDTableclientes.FieldByName('endereco').Value := (txt_end.Text);
  Principal.FDTableclientes.FieldByName('rev').Value := (txt_rev.Text);
  Principal.FDTableclientes.FieldByName('Valor').Value := (txt_tot.Text);

end;

procedure TClientes.Uppercase;
begin
txt_nome.Text := AnsiUpperCase(txt_nome.Text);
txt_end.Text := AnsiUpperCase(txt_end.Text);
end;

end.
