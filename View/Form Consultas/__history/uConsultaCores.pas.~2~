unit uConsultaCores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroCores;

type
  Tform_consulta_cores = class(Tform_consulta_pai)
  private
    { Private declarations }
    oCadastroCores : Tform_cadastro_cores;
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
  form_consulta_cores: Tform_consulta_cores;

implementation

{$R *.dfm}

{ Tform_consulta_cores }

procedure Tform_consulta_cores.alterar;
begin
  inherited;

end;

procedure Tform_consulta_cores.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;

end;

procedure Tform_consulta_cores.excluir;
begin
  inherited;

end;

procedure Tform_consulta_cores.novo;
begin
  inherited;
  oCadastroCores.ShowModal;
end;

procedure Tform_consulta_cores.pesquisar;
begin
  inherited;

end;

procedure Tform_consulta_cores.sair;
begin
  inherited;

end;

procedure Tform_consulta_cores.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroCores := Tform_cadastro_cores( pObj );
end;

end.
