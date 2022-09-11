unit uConsultaTiposContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroTiposContatos;

type
  Tform_consulta_tipos_contatos = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroTiposContatos : Tform_cadastro_tipo_contato;
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
  form_consulta_tipos_contatos: Tform_consulta_tipos_contatos;

implementation

{$R *.dfm}

{ Tform_consulta_tipos_contatos }

procedure Tform_consulta_tipos_contatos.alterar;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.novo;
begin
  inherited;
  oCadastroTiposContatos.ShowModal;
end;

procedure Tform_consulta_tipos_contatos.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.sair;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroTiposContatos := Tform_cadastro_tipo_contato( pObj );
end;

end.
