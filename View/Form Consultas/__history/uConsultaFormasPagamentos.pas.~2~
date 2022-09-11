unit uConsultaFormasPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroFormasPagamentos;

type
  Tform_consulta_formas_pagamentos = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroFormasPagamentos : Tform_cadastro_formas_pagamentos;
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
  form_consulta_formas_pagamentos: Tform_consulta_formas_pagamentos;

implementation

{$R *.dfm}

{ Tform_consulta_formas_pagamentos }

procedure Tform_consulta_formas_pagamentos.alterar;
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.novo;
begin
  inherited;
  oCadastroFormasPagamentos.ShowModal;
end;

procedure Tform_consulta_formas_pagamentos.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.sair;
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroFormasPagamentos:= Tform_cadastro_formas_pagamentos( pObj );
end;

end.
