unit uConsultaColecoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroColecoes;

type
  Tform_consulta_colecoes = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroColecoes : Tform_cadastro_colecoes;
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
  form_consulta_colecoes: Tform_consulta_colecoes;

implementation

{$R *.dfm}

{ Tform_consulta_colecoes }

procedure Tform_consulta_colecoes.alterar;
begin
  inherited;

end;

procedure Tform_consulta_colecoes.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_colecoes.excluir;
begin
  inherited;

end;

procedure Tform_consulta_colecoes.novo;
begin
  inherited;
  oCadastroColecoes.ShowModal;
end;

procedure Tform_consulta_colecoes.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_colecoes.sair;
begin
  inherited;

end;

procedure Tform_consulta_colecoes.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroColecoes := Tform_cadastro_colecoes( pObj );
end;

end.
