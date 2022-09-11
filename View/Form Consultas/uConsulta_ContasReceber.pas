unit uConsulta_ContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroContasReceber;

type
  Tform_consulta_contas_receber = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroContasReceber : Tform_cadastro_contas_receber;
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
  form_consulta_contas_receber: Tform_consulta_contas_receber;

implementation

{$R *.dfm}

{ Tform_consulta_contas_receber }

procedure Tform_consulta_contas_receber.alterar;
begin
  inherited;

end;

procedure Tform_consulta_contas_receber.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_contas_receber.excluir;
begin
  inherited;

end;

procedure Tform_consulta_contas_receber.novo;
begin
  inherited;
  oCadastroContasReceber.ShowModal;
end;

procedure Tform_consulta_contas_receber.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_contas_receber.sair;
begin
  inherited;

end;

procedure Tform_consulta_contas_receber.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroContasReceber := Tform_cadastro_contas_receber( pObj );
end;

end.
