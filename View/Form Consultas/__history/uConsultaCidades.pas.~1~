unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls,
  uCadastroCidades;

type
  Tform_consulta_cidades = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroCidades : Tform_cadastro_cidades;
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
  form_consulta_cidades: Tform_consulta_cidades;

implementation

{$R *.dfm}

{ Tform_consulta_cidades }

procedure Tform_consulta_cidades.alterar;
begin
  inherited;

end;

procedure Tform_consulta_cidades.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_cidades.excluir;
begin
  inherited;

end;

procedure Tform_consulta_cidades.novo;
begin
  inherited;
  oCadastroCidades.ShowModal;
end;

procedure Tform_consulta_cidades.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_cidades.sair;
begin
  inherited;

end;

procedure Tform_consulta_cidades.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroCidades:= Tform_cadastro_cidades( pObj );
end;

end.
