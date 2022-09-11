unit uConsultaContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroContasPagar;

type
  Tform_consulta_contas_pagar = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroContasPagar : Tform_cadastro_contas_pagar;
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
  form_consulta_contas_pagar: Tform_consulta_contas_pagar;

implementation

{$R *.dfm}

{ Tform_consulta_contas_pagar }

procedure Tform_consulta_contas_pagar.alterar;
begin
  inherited;

end;

procedure Tform_consulta_contas_pagar.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_contas_pagar.excluir;
begin
  inherited;

end;

procedure Tform_consulta_contas_pagar.novo;
begin
  inherited;
  oCadastroContasPagar.ShowModal;
end;

procedure Tform_consulta_contas_pagar.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_contas_pagar.sair;
begin
  inherited;

end;

procedure Tform_consulta_contas_pagar.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroContasPagar := Tform_cadastro_contas_pagar( pObj );
end;

end.
