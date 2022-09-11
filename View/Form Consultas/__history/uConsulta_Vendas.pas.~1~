unit uConsultaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroVendas;

type
  Tform_consulta_vendas = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroVendas : Tform_cadastro_vendas;
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
  form_consulta_vendas: Tform_consulta_vendas;

implementation

{$R *.dfm}

{ Tform_consulta_vendas }

procedure Tform_consulta_vendas.alterar;
begin
  inherited;

end;

procedure Tform_consulta_vendas.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_vendas.excluir;
begin
  inherited;

end;

procedure Tform_consulta_vendas.novo;
begin
  inherited;
  oCadastroVendas.ShowModal;
end;

procedure Tform_consulta_vendas.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_vendas.sair;
begin
  inherited;

end;

procedure Tform_consulta_vendas.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroVendas := Tform_cadastro_vendas( pObj );
end;

end.
