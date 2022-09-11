unit uConsulta_Compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls,
  uCadastro_Compras;

type
  Tform_consulta_compras = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroCompras : Tform_cadastro_compras;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_compras: Tform_consulta_compras;

implementation

{$R *.dfm}

procedure Tform_consulta_compras.alterar;
begin
  inherited;

end;

procedure Tform_consulta_compras.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_compras.excluir;
begin
  inherited;

end;

procedure Tform_consulta_compras.novo;
begin
  inherited;
  oCadastroCompras.ShowModal;
end;

procedure Tform_consulta_compras.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_compras.sair;
begin
  inherited;

end;

procedure Tform_consulta_compras.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_compras;
begin
  inherited;
  oCadastroCompras:= Tform_cadastro_compras( pObj );

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_compras.tipoFiltro;
begin
  inherited;

end;

end.
