unit uConsultaTamanhos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroTamanhos;

type
  Tform_consulta_tamanhos = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroTamanhos : Tform_cadastro_tamanhos;
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
  form_consulta_tamanhos: Tform_consulta_tamanhos;

implementation

{$R *.dfm}

{ Tform_consulta_tamanhos }

procedure Tform_consulta_tamanhos.alterar;
begin
  inherited;

end;

procedure Tform_consulta_tamanhos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_tamanhos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_tamanhos.novo;
begin
  inherited;
  oCadastroTamanhos.ShowModal;
end;

procedure Tform_consulta_tamanhos.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_tamanhos.sair;
begin
  inherited;

end;

procedure Tform_consulta_tamanhos.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroTamanhos := Tform_cadastro_tamanhos( pObj );
end;

end.
