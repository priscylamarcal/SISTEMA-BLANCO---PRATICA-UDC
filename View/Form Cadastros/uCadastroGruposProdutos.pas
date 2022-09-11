unit uCadastroGruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, Vcl.Mask, MaskEdit1,
  uGruposRoupas,
  uCtrlGruposRoupas;

type
  Tform_cadastro_grupos_produtos = class(Tform_cadastro_pai)
    lbl_grupo_produto: TLabel;
    edt_grupo_produto: PriTEdit;
  private
    { Private declarations }
    oGrupoRoupa : GruposRoupas;
    aCtrlGruposRoupas : ctrlGruposRoupas;
  public
    { Public declarations }
    procedure conhecaObj ( pCtrl, pObj : TObject );  override;
    procedure salvar;         override;
    procedure sair;           override;
    procedure limpaEdt;       override;
    procedure carregaEdt;     override;
    procedure bloqueiaEdt;    override;
    procedure desbloqueiaEdt; override;
    function validaFormulario : Boolean; override;
  end;

var
  form_cadastro_grupos_produtos: Tform_cadastro_grupos_produtos;

implementation

{$R *.dfm}

{ Tform_cadastro_grupos_produtos }

procedure Tform_cadastro_grupos_produtos.bloqueiaEdt;
begin
  inherited;
  self.edt_grupo_produto.Enabled:= False;
end;

procedure Tform_cadastro_grupos_produtos.carregaEdt;
begin
  inherited;

  if oGrupoRoupa.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oGrupoRoupa.getCodigo );

  self.edt_grupo_produto.Text:= oGrupoRoupa.getGrupoRoupa;
  self.edt_data_cadastro.Text:= DateToStr( oGrupoRoupa.getDataCad );
  self.edt_data_ult_alt.Text:= DateToStr( oGrupoRoupa.getUltAlt );
  self.edt_cod_usuario.Text:= IntToStr( oGrupoRoupa.getCodUsu );
end;

procedure Tform_cadastro_grupos_produtos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oGrupoRoupa:= GruposRoupas( pObj );
  aCtrlGruposRoupas:= ctrlGruposRoupas( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_grupos_produtos.desbloqueiaEdt;
begin
  inherited;
  self.edt_grupo_produto.Enabled:= True;
end;

procedure Tform_cadastro_grupos_produtos.limpaEdt;
begin
  inherited;
  self.edt_grupo_produto.Clear;
  Self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_grupos_produtos.sair;
begin
  inherited;

end;

procedure Tform_cadastro_grupos_produtos.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oGrupoRoupa.setCodigo( StrToInt ( edt_codigo.Text ) );
    oGrupoRoupa.setGrupoRoupa( self.edt_grupo_produto.Text );
    oGrupoRoupa.setDataCad( Date );
    oGrupoRoupa.setCodUsu( StrToInt ( edt_cod_usuario.Text ) );

    if Self.btn_botao_salvar.Caption = 'Salvar' then
       aCtrlGruposRoupas.salvar( oGrupoRoupa.clone )
    else
       aCtrlGruposRoupas.excluir( oGrupoRoupa.clone );

    self.sair
  end;
end;

function Tform_cadastro_grupos_produtos.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_grupo_produto.Text = '' then
  begin
    MessageDlg( 'O campo Grupo de Roupa é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_grupo_produto.SetFocus;
    Exit;
  end;

  Result:= True;
end;

end.
