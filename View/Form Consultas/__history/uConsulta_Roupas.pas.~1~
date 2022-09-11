unit uConsultaRoupas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroProdutos;

type
  Tform_consulta_roupas = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroProdutos : Tform_cadastro_produtos;
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
  form_consulta_roupas: Tform_consulta_roupas;

implementation

{$R *.dfm}

{ Tform_consulta_roupas }

procedure Tform_consulta_roupas.alterar;
begin
  inherited;

end;

procedure Tform_consulta_roupas.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_roupas.excluir;
begin
  inherited;

end;

procedure Tform_consulta_roupas.novo;
begin
  inherited;
  oCadastroProdutos.ShowModal;
end;

procedure Tform_consulta_roupas.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_roupas.sair;
begin
  inherited;

end;

procedure Tform_consulta_roupas.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroProdutos := Tform_cadastro_produtos( pObj );
end;

end.
