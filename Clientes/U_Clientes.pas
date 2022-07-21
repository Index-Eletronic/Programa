unit U_Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

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
    Label1: TLabel;
    procedure Arquivo2Click(Sender: TObject);
    procedure Sair4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

{$R *.dfm}

uses U_Cadastro;

procedure TPrincipal.Arquivo2Click(Sender: TObject);
begin
Principal.Hide;
 Clientes := TClientes.create(self);
 Clientes.ShowModal;
end;

procedure TPrincipal.Sair4Click(Sender: TObject);
begin
Principal.Close;
end;

end.
