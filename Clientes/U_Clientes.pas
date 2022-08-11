unit U_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope, Vcl.Buttons;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    PlanodeCortes1: TMenuItem;
    PlanodeCortes2: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Sair3: TMenuItem;
    Sair4: TMenuItem;
    Image1: TImage;
    FDConnection1: TFDConnection;
    BindSourceclientes: TBindSourceDB;
    FDTableclientes: TFDTable;
    lbl_conexao: TLabel;
    Panel1: TPanel;
    ProgramaoSemanal1: TMenuItem;
    Label1: TLabel;
    Panel4: TPanel;
    PENDECIAS1: TMenuItem;
    Projetos: TMenuItem;
    Produo1: TMenuItem;
    Produo2: TMenuItem;
    btn_programacao: TSpeedButton;
    procedure Arquivo2Click(Sender: TObject);
    procedure Sair4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PlanodeCortes2Click(Sender: TObject);
    procedure ProjetosClick(Sender: TObject);
    procedure PlanodeCortes1Click(Sender: TObject);
    procedure btn_programacaoClick(Sender: TObject);
    procedure ProgramaoSemanal1Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses U_Cadastro, U_Orcamento,U_Projetos, U_Prog_Semanal, U_planocorte;

procedure TPrincipal.Arquivo2Click(Sender: TObject);
begin
Principal.Hide;
 Clientes := TClientes.create(self);
 Clientes.ShowModal;
end;

procedure TPrincipal.btn_programacaoClick(Sender: TObject);
begin
frm_programacao := Tfrm_programacao.Create(self);
frm_programacao.ShowModal;
end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
if FDConnection1.Connected = True then

    lbl_conexao.Caption := 'BANCO CONECTADO'
else
  lbl_conexao.Caption := 'BANCO N�O CONECTADO'
end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FDConnection1.Close;
FDTableclientes.Close;
Clientes.Hide;
//Principal.Hide;
end;

procedure TPrincipal.PlanodeCortes1Click(Sender: TObject);
begin
Principal.Hide;
frm_Plano := Tfrm_Plano.Create(self);
frm_Plano.ShowModal;
end;

procedure TPrincipal.PlanodeCortes2Click(Sender: TObject);
begin
Principal.Hide;
Cad_Orcamento := TCad_Orcamento.create(self);
Cad_Orcamento.ShowModal;
end;



procedure TPrincipal.ProgramaoSemanal1Click(Sender: TObject);
begin
frm_programacao := Tfrm_programacao.Create(self);
frm_programacao.ShowModal;
end;

procedure TPrincipal.ProjetosClick(Sender: TObject);
begin
Principal.Hide;
frm_Proj := Tfrm_Proj.Create(self);
frm_Proj.ShowModal;

end;

procedure TPrincipal.Sair4Click(Sender: TObject);
begin
Principal.Close;
Clientes.Close;
end;

end.
