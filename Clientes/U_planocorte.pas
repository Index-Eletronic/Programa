unit U_planocorte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Data.Bind.Controls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.Buttons,
  Vcl.Bind.Navigator, FireDAC.Comp.DataSet, Data.Bind.DBScope,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef;

type
  Tfrm_Plano = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    txt_Pesq: TEdit;
    btn_filtar: TButton;
    FDCon_precos: TFDConnection;
    Driver_precos: TFDPhysMySQLDriverLink;
    BindSourcetuonmarcenaria_precos: TBindSourceDB;
    FDTabletuonmarcenaria_precos: TFDTable;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    CB_Qr: TComboBox;
    FD_PlanoCorte: TFDConnection;
    Driver_PlanoCorte: TFDPhysMySQLDriverLink;
    BindSourcetuonmarcenaria_planocorte: TBindSourceDB;
    FDT_planocorte: TFDTable;
    Panel3: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    txt_qtde: TEdit;
    txt_vlr: TEdit;
    btn_novo: TButton;
    btn_salvar: TButton;
    btn_editar: TButton;
    btn_excluir: TButton;
    CB_mat: TComboBox;
    DataSource1: TDataSource;
    txt_cod_mat: TEdit;
    LinkControlToField3: TLinkControlToField;
    btn_Mat: TButton;
    FDT_planocorteid_plano: TFDAutoIncField;
    FDT_planocorteid_mat: TStringField;
    FDT_planocorteqr: TStringField;
    FDT_planocorteqtde: TStringField;
    FDT_planocortetotal: TStringField;
    FDT_planocortevalor: TStringField;
    FDT_planocortemat: TStringField;
    LinkControlToField4: TLinkControlToField;
    lbl_total: TLabel;
    Label10: TLabel;
    LinkListControlToField1: TLinkListControlToField;
    CB_Pesq: TComboBox;
    LinkListControlToField2: TLinkListControlToField;
    procedure FDT_planocorteBeforePost(DataSet: TDataSet);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FDT_planocorteBeforeEdit(DataSet: TDataSet);
    procedure btn_excluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_qtdeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_filtarClick(Sender: TObject);
    procedure btn_MatClick(Sender: TObject);
    procedure FDTabletuonmarcenaria_precosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);

    private
    procedure Desbloqueia;
    procedure Bloqueia;
    procedure Limpar;

  public
    { Public declarations }
  end;

var
  frm_Plano: Tfrm_Plano;

implementation

{$R *.dfm}

uses U_Clientes, U_Orcamento, U_Projetos, U_Cadastro, U_CadMateriais;

procedure Tfrm_Plano.Bloqueia;
begin
 CB_mat.Enabled := False;
 CB_Qr.Enabled := False;
 txt_cod_mat.Enabled := False;
 txt_qtde.Enabled := False;
 txt_vlr.Enabled := False;
 //txt_larg.Enabled := False;
end;

procedure Tfrm_Plano.btn_excluirClick(Sender: TObject);
begin
FDT_planocorte.delete;
end;

procedure Tfrm_Plano.btn_filtarClick(Sender: TObject);
begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;

  with FDT_planocorte do
  begin
    if CB_Pesq.Text = 'QR'then //(CB_Pesq.Text ='COD')or (CB_Pesq.Text ='MATERIAL')
    begin
      close;
      sql.Clear;
      sql.Add('select * from planocorte where'+CB_Pesq.text+' = :pcod');
      ParamByName('pcod').AsInteger := StrToInt(txt_Pesq.Text);
      open;
    end
    else begin
      close;
      sql.Clear;
      sql.Add('select * from planocorte where'+CB_Pesq.text+' = :pcod');
      ParamByName('pcod').AsString := txt_Pesq.Text;
    end;

  end;
end;

procedure Tfrm_Plano.btn_MatClick(Sender: TObject);
begin
frm_Plano.Hide;
frm_CadMateriais := Tfrm_CadMateriais.Create(self);
frm_CadMateriais.ShowModal;
end;

procedure Tfrm_Plano.btn_novoClick(Sender: TObject);
begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;

FDT_planocorte.Insert;
Desbloqueia;
Limpar;
end;

procedure Tfrm_Plano.btn_salvarClick(Sender: TObject);

begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;

FDT_planocorte.Post;
Limpar;
txt_qtde.SetFocus;

if Application.MessageBox('Deseja adicionar mais?','',MB_ICONQUESTION+MB_YESNO) = mrYes then
begin
FDT_planocorte.Insert;
Desbloqueia;
Limpar;
end
else
begin
Bloqueia;
end;

end;

procedure Tfrm_Plano.Desbloqueia;
begin
 CB_mat.Enabled := True;
 CB_Qr.Enabled := True;
 txt_cod_mat.Enabled := True;
 txt_qtde.Enabled := True;

end;

procedure Tfrm_Plano.FDTabletuonmarcenaria_precosBeforePost(DataSet: TDataSet);
begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;
FDTabletuonmarcenaria_precos.FieldByName('id_mat').Value := frm_CadMateriais.txt_cod_mat.text;
FDTabletuonmarcenaria_precos.FieldByName('descricao').Value := frm_CadMateriais.txt_desc.text;
FDTabletuonmarcenaria_precos.FieldByName('valor').Value := frm_CadMateriais.txt_vlr.text;
FDTabletuonmarcenaria_precos.FieldByName('unidade').Value := frm_CadMateriais.txt_uni.text;
end;

procedure Tfrm_Plano.FDT_planocorteBeforeEdit(DataSet: TDataSet);
begin
Desbloqueia;
FDT_planocorte.Edit;

end;

procedure Tfrm_Plano.FDT_planocorteBeforePost(DataSet: TDataSet);
begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;

FDT_planocorte.FieldByName('id_mat').Value := txt_cod_mat.TExt;
FDT_planocorte.FieldByName('qr').Value := CB_Qr.text;
FDT_planocorte.FieldByName('qtde').Value := txt_qtde.Text;
FDT_planocorte.FieldByName('valor').Value := txt_vlr.Text;
FDT_planocorte.FieldByName('total').Value := lbl_total.Caption;
FDT_planocorte.FieldByName('mat').Value := CB_mat.Text;


end;



procedure Tfrm_Plano.FormActivate(Sender: TObject);
begin
//Cad_Orcamento.FD_Con_PCP.Connected := True;
//Cad_Orcamento.FDTablepcp.Active:=True;
end;

procedure Tfrm_Plano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
FDT_planocorte.Close;
FD_PlanoCorte.Close;

FDTabletuonmarcenaria_precos.Close;
FDCon_precos.Close;

Principal.FDConnection1.Close;
Principal.FDTableclientes.Close;

Cad_Orcamento.FD_Con_PCP.Close;
Cad_Orcamento.FDTablepcp.Close;}

frm_Plano.hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

procedure Tfrm_Plano.FormCreate(Sender: TObject);
begin
FDT_planocorte.Active:=True;
FD_PlanoCorte.Connected := True;

FDTabletuonmarcenaria_precos.Active := true;
FDCon_precos.Connected := True;
end;

procedure Tfrm_Plano.Limpar;
begin
 txt_qtde.text := '';
 //txt_comp.text := '';
 //txt_larg.text := '';
end;


procedure Tfrm_Plano.txt_qtdeChange(Sender: TObject);
begin
var mat, vlr, tot: double;
begin

if txt_qtde.Text = '' then
begin
  txt_qtde.Text := '';
end
else
begin
  mat := strtoFloat(txt_qtde.Text);
  vlr := StrToFloat(txt_vlr.Text);

  tot := (mat * vlr);
  lbl_total.caption := FloatToStr(tot);

end;
end;
end;

end.

