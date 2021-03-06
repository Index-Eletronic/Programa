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
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope;

type
  TPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    PlanodeCortes1: TMenuItem;
    PlanodeCortes2: TMenuItem;
    Estoque1: TMenuItem;
    AnalisedeInsumos1: TMenuItem;
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
    Label2: TLabel;
    ProgramaoSemanal1: TMenuItem;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    procedure Arquivo2Click(Sender: TObject);
    procedure Sair4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PlanodeCortes2Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses U_Cadastro, U_Orcamento;

procedure TPrincipal.Arquivo2Click(Sender: TObject);
begin
Principal.Hide;
 Clientes := TClientes.create(self);
 Clientes.ShowModal;
end;

procedure TPrincipal.FormActivate(Sender: TObject);
begin
if FDConnection1.Connected = True then

    lbl_conexao.Caption := 'BANCO CONECTADO'
else
  lbl_conexao.Caption := 'BANCO N?O CONECTADO'
end;

procedure TPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Principal.Close;
Clientes.Close;
end;

procedure TPrincipal.PlanodeCortes2Click(Sender: TObject);
begin
Principal.Hide;
Cad_Orcamento := TCad_Orcamento.create(self);
Cad_Orcamento.ShowModal;
end;

procedure TPrincipal.Sair4Click(Sender: TObject);
begin
Principal.Close;
Clientes.Close;
end;

end.
