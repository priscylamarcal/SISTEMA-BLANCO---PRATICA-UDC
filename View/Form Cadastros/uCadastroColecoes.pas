unit uCadastroColecoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, uColecoes, uCtrlColecoes;

type
  Tform_cadastro_colecoes = class(Tform_cadastro_pai)
    edt_colecao: PriTEdit;
    lbl_colecao: TLabel;
  private
    { Private declarations }
    aColecao : Colecoes;
    aCtrlColecoes : ctrlColecoes;
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
  form_cadastro_colecoes: Tform_cadastro_colecoes;

implementation

{$R *.dfm}

{ Tform_cadastro_colecoes }

procedure Tform_cadastro_colecoes.bloqueiaEdt;
begin
  inherited;
  Self.edt_colecao.Enabled:= False;
end;

procedure Tform_cadastro_colecoes.carregaEdt;
begin
  inherited;

  if aColecao.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( aColecao.getCodigo );

  self.edt_colecao.Text:= aColecao.getColecao;
  self.edt_data_cadastro.Text:= DateToStr( aColecao.getDataCad );
  self.edt_data_ult_alt.Text:= DateToStr( aColecao.getUltAlt );

end;

procedure Tform_cadastro_colecoes.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aColecao:= Colecoes( pObj );
  aCtrlColecoes:= ctrlColecoes( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_colecoes.desbloqueiaEdt;
begin
  inherited;
  Self.edt_colecao.Enabled:= True;
end;

procedure Tform_cadastro_colecoes.limpaEdt;
begin
  inherited;
  Self.edt_colecao.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_colecoes.sair;
begin
  inherited;

end;

procedure Tform_cadastro_colecoes.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    aColecao.setCodigo( StrToInt ( self.edt_codigo.Text ) );
    aColecao.setColecao( self.edt_colecao.Text );
    aColecao.setDataCad( Date );
    aColecao.setUltAlt( Date );
    aColecao.setCodUsu( StrToInt ( self.edt_cod_usuario.Text ) );

    if btn_botao_salvar.Caption = 'Salvar' then
       aCtrlColecoes.salvar( aColecao.clone )
    else
       aCtrlColecoes.excluir( aColecao.clone );

    self.sair;
  end;
end;

function Tform_cadastro_colecoes.validaFormulario: Boolean;
begin
  Result:= False;

  if self.edt_colecao.Text = '' then
  begin
    MessageDlg( 'O campo Coleção é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_colecao.SetFocus;
    Exit;
  end;

  Result:= True;
end;

end.
