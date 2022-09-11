unit uConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroClientes;

type
  Tform_consulta_clientes = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroClientes : Tform_cadastro_clientes;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
  end;

var
  form_consulta_clientes: Tform_consulta_clientes;

implementation

{$R *.dfm}

{ Tform_consulta_clientes }

procedure Tform_consulta_clientes.alterar;
begin
  inherited;

end;

procedure Tform_consulta_clientes.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_clientes.excluir;
begin
  inherited;

end;

procedure Tform_consulta_clientes.novo;
begin
  inherited;
  oCadastroClientes.ShowModal;
end;

procedure Tform_consulta_clientes.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_clientes.sair;
begin
  inherited;

end;

procedure Tform_consulta_clientes.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroClientes := Tform_cadastro_clientes( pObj );
end;

end.
