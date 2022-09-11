unit uConsultaGruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroGruposProdutos;

type
  Tform_consulta_grupos_produtos = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroGruposProdutos : Tform_cadastro_grupos_produtos;
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
  form_consulta_grupos_produtos: Tform_consulta_grupos_produtos;

implementation

{$R *.dfm}

{ Tform_consulta_grupos_produtos }

procedure Tform_consulta_grupos_produtos.alterar;
begin
  inherited;

end;

procedure Tform_consulta_grupos_produtos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_grupos_produtos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_grupos_produtos.novo;
begin
  inherited;
  oCadastroGruposProdutos.ShowModal;
end;

procedure Tform_consulta_grupos_produtos.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_grupos_produtos.sair;
begin
  inherited;

end;

procedure Tform_consulta_grupos_produtos.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroGruposProdutos := Tform_cadastro_grupos_produtos( pObj );
end;

end.
