unit uCadastroTiposContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, uTiposContatos, uCtrlTiposContatos;

type
  Tform_cadastro_tipo_contato = class(Tform_cadastro_pai)
    lbl_tipo_contato: TLabel;
    edt_tipo_contato: PriTEdit;
  private
    { Private declarations }
    oTipoContato : TiposContatos;
    aCtrlTiposContatos : ctrlTiposContatos;
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
  form_cadastro_tipo_contato: Tform_cadastro_tipo_contato;

implementation

{$R *.dfm}

{ Tform_cadastro_tipo_contato }

procedure Tform_cadastro_tipo_contato.bloqueiaEdt;
begin
  inherited;
  self.edt_tipo_contato.Enabled:= False;
end;

procedure Tform_cadastro_tipo_contato.carregaEdt;
begin
  inherited;
  if oTipoContato.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oTipoContato.getCodigo );

  self.edt_tipo_contato.Text:= oTipoContato.getTipoContato;
  self.edt_data_cadastro.Text:= DateToStr( oTipoContato.getDataCad );
  self.edt_data_ult_alt.Text:= DateToStr( oTipoContato.getUltAlt );
end;

procedure Tform_cadastro_tipo_contato.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oTipoContato:= TiposContatos( pObj );
  aCtrlTiposContatos:= ctrlTiposContatos( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_tipo_contato.desbloqueiaEdt;
begin
  inherited;
  self.edt_tipo_contato.Enabled:= True;
end;

procedure Tform_cadastro_tipo_contato.limpaEdt;
begin
  inherited;
  self.edt_tipo_contato.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_tipo_contato.sair;
begin
  inherited;

end;

procedure Tform_cadastro_tipo_contato.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oTipoContato.setCodigo( StrToInt ( self.edt_codigo.Text ) );
    oTipoContato.setTipoContato( self.edt_tipo_contato.Text );
    oTipoContato.setDataCad( Date );
    oTipoContato.setUltAlt( Date );
    oTipoContato.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );


    if Self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
       aCtrlTiposContatos.salvar( oTipoContato.clone )
    else //EXCLUIR
       aCtrlTiposContatos.excluir( oTipoContato.clone );

    self.sair;
  end;
end;

function Tform_cadastro_tipo_contato.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_tipo_contato.Text = '' then
  begin
    MessageDlg( 'O campo Tipo Contato é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_tipo_contato.SetFocus;
    Exit;
  end;

 Result:= true;
end;

end.
