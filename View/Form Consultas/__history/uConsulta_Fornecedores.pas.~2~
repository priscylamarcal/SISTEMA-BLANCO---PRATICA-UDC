unit uConsulta_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroFornecedores;

type
  Tform_consulta_fornecedores = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroFornecedores : Tform_cadastro_fornecedores;
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
  form_consulta_fornecedores: Tform_consulta_fornecedores;

implementation

{$R *.dfm}

{ Tform_consulta_fornecedores }

procedure Tform_consulta_fornecedores.alterar;
begin
  inherited;

end;

procedure Tform_consulta_fornecedores.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_fornecedores.excluir;
begin
  inherited;

end;

procedure Tform_consulta_fornecedores.novo;
begin
  inherited;
  oCadastroFornecedores.ShowModal;
end;

procedure Tform_consulta_fornecedores.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_fornecedores.sair;
begin
  inherited;

end;

procedure Tform_consulta_fornecedores.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroFornecedores := Tform_cadastro_fornecedores( pObj );
end;

end.
