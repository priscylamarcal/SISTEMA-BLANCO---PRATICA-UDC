unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls,
  uCadastroEstados;

type
  Tform_consulta_estados = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroEstados : Tform_cadastro_estados;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pObj : TObject; pCtrl : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
  end;

var
  form_consulta_estados: Tform_consulta_estados;

implementation

{$R *.dfm}

{ Tform_consulta_estados }

procedure Tform_consulta_estados.alterar;
begin
  inherited;

end;

procedure Tform_consulta_estados.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure Tform_consulta_estados.excluir;
begin
  inherited;

end;

procedure Tform_consulta_estados.novo;
begin
  inherited;
  oCadastroEstados.ShowModal;
end;

procedure Tform_consulta_estados.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_estados.sair;
begin
  inherited;

end;

procedure Tform_consulta_estados.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroEstados:= Tform_cadastro_estados ( pObj );
end;

end.
