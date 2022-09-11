unit uCadastroTamanhos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, uTamanhos, uCtrlTamanhos;

type
  Tform_cadastro_tamanhos = class(Tform_cadastro_pai)
    edt_sigla_tamanho: PriTEdit;
    edt_largura: PriTEdit;
    edt_altura: PriTEdit;
    edt_comprimento: PriTEdit;
    lbl_sigla_tamanho: TLabel;
    lbl_largura: TLabel;
    lbl_altura: TLabel;
    lbl_comprimento: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    oTamanho : Tamanhos;
    aCtrlTamanhos : ctrlTamanhos;
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
  form_cadastro_tamanhos: Tform_cadastro_tamanhos;

implementation

{$R *.dfm}

{ Tform_cadastro_tamanhos }

procedure Tform_cadastro_tamanhos.bloqueiaEdt;
begin
  inherited;
  self.edt_sigla_tamanho.Enabled:= False;
  self.edt_largura.Enabled:= False;
  self.edt_altura.Enabled:= False;
  self.edt_comprimento.Enabled:= False;
end;

procedure Tform_cadastro_tamanhos.carregaEdt;
begin
  inherited;

  if oTamanho.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oTamanho.getCodigo );

  self.edt_sigla_tamanho.Text:= oTamanho.getSiglaTamanho;
  self.edt_largura.Text:= oTamanho.getLargura;
  self.edt_altura.Text:= oTamanho.getAltura;
  self.edt_comprimento.Text:= oTamanho.getComprimento;
  Self.edt_data_cadastro.Text:= DateToStr( oTamanho.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(oTamanho.getUltAlt);
end;

procedure Tform_cadastro_tamanhos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oTamanho:= Tamanhos( pObj );
  aCtrlTamanhos:= ctrlTamanhos( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_tamanhos.desbloqueiaEdt;
begin
  inherited;
  self.edt_sigla_tamanho.Enabled:= True;
  self.edt_largura.Enabled:= True;
  self.edt_altura.Enabled:= True;
  self.edt_comprimento.Enabled:= True;
end;

procedure Tform_cadastro_tamanhos.FormActivate(Sender: TObject);
begin
  inherited;
 // edt_sigla_tamanho.SetFocus;
end;

procedure Tform_cadastro_tamanhos.limpaEdt;
begin
  inherited;
  self.edt_sigla_tamanho.Clear;
  self.edt_largura.Clear;
  self.edt_altura.Clear;
  self.edt_comprimento.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_tamanhos.sair;
begin
  inherited;

end;

procedure Tform_cadastro_tamanhos.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oTamanho.setCodigo( StrToInt ( Self.edt_codigo.Text ) );
    oTamanho.setSiglaTamanho(self.edt_sigla_tamanho.Text);
    oTamanho.setLargura(self.edt_largura.Text);
    oTamanho.setAltura(self.edt_altura.Text);
    oTamanho.setComprimento(self.edt_comprimento.Text);
    oTamanho.setDataCad( Date );
    oTamanho.setUltAlt( Date );
    oTamanho.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );

    if Self.btn_botao_salvar.Caption = 'Salvar' then 
       aCtrlTamanhos.salvar( oTamanho.clone )
    else
       aCtrlTamanhos.excluir( oTamanho.clone );

    self.sair;
  end;
end;

function Tform_cadastro_tamanhos.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_sigla_tamanho.Text = '' then
  begin
    MessageDlg( 'O campo Sigla Tamanho é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_sigla_tamanho.SetFocus;
    Exit;
  end;

 Result:= true;
end;

end.
