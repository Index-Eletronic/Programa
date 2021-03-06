unit U_prog_AcessBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, Data.Bind.Components, Data.Bind.DBScope,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Bind.Navigator, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_inicial = class(TForm)
    FDConnection1: TFDConnection;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_permissao: TEdit;
    txt_idade: TEdit;
    BindSourceusuarios: TBindSourceDB;
    FDTableusuarios: TFDTable;
    NavigatorBindSourceusuarios: TBindNavigator;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    lbnome: TLabel;
    lb_sobrenome: TLabel;
    lb_permisao: TLabel;
    lb_idade: TLabel;
    btn_novo: TButton;
    btn_Editar: TButton;
    btn_Salvar: TButton;
    btn_Exluir: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDStoredProc1: TFDStoredProc;
    btn_pesq: TButton;
    txt_pesq: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inicial: Tfrm_inicial;

implementation

{$R *.dfm}

end.
