unit uCadastroCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, campoEdit,
  Vcl.Buttons, Vcl.ExtCtrls, uCargos, uCtrlCargos, uConsulta_Departamentos;

type
  Tform_cadastro_cargos = class(Tform_cadastro_pai)
    edt_cargo: PriTEdit;
    lbl_cargo: TLabel;
    edt_pesquisar_departamento_cargo: PriTEdit;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    Departamento: TLabel;
    lbl_cod_departamento: TLabel;
    edt_cod_departamento: PriTEdit;
    procedure FormActivate(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
  private
    { Private declarations }

    oCargo : Cargos;
    aCtrlCargos : ctrlCargos;

    aConsultaDepartamentos : Tform_consulta_departamentos;
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
    procedure setFrmConsultaDepartamentos ( pConsulta : TObject );
  end;

var
  form_cadastro_cargos: Tform_cadastro_cargos;

implementation

{$R *.dfm}

{ Tform_cadastro_cargos }

procedure Tform_cadastro_cargos.bloqueiaEdt;
begin
  inherited;
  self.edt_cargo.Enabled:= False;
  self.edt_cod_departamento.Enabled:= False;
  self.edt_pesquisar_departamento_cargo.Enabled:= False;
end;

procedure Tform_cadastro_cargos.btn_pesquisaClick(Sender: TObject);
var aux : string;
begin
 // inherited;
  aConsultaDepartamentos.conhecaObj( aCtrlCargos.getCtrlDepartamentos, oCargo.getoDepartamento );
  aux:= aConsultaDepartamentos.btn_botao_sair.Caption;
  aConsultaDepartamentos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaDepartamentos.ShowModal;
  aConsultaDepartamentos.btn_botao_sair.Caption:= aux;

  self.edt_cod_departamento.Text:= IntToStr( oCargo.getoDepartamento.getCodigo );
  self.edt_pesquisar_departamento_cargo.Text:= oCargo.getoDepartamento.getDepartamento;
end;

procedure Tform_cadastro_cargos.carregaEdt;
begin
  inherited;

  if oCargo.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oCargo.getCodigo );

  self.edt_cargo.Text:= oCargo.getCargo;
  self.edt_cod_departamento.Text:= IntToStr( oCargo.getoDepartamento.getCodigo );
  self.edt_pesquisar_departamento_cargo.Text:= oCargo.getoDepartamento.getDepartamento;
  self.edt_data_cadastro.Text:= DateToStr( oCargo.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(oCargo.getUltAlt);
end;

procedure Tform_cadastro_cargos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oCargo:= Cargos( pObj );
  aCtrlCargos:= ctrlCargos( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_cargos.desbloqueiaEdt;
begin
  inherited;
  self.edt_cargo.Enabled:= True;
  self.edt_cod_departamento.Enabled:= True;
  self.edt_pesquisar_departamento_cargo.Enabled:= True;
end;

procedure Tform_cadastro_cargos.FormActivate(Sender: TObject);
begin
  inherited;
  //edt_cargo.SetFocus;
end;

procedure Tform_cadastro_cargos.limpaEdt;
begin
  inherited;
  self.edt_cargo.Clear;
  self.edt_cod_departamento.Clear;
  self.edt_pesquisar_departamento_cargo.Clear;
  Self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_cargos.sair;
begin
  inherited;

end;

procedure Tform_cadastro_cargos.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oCargo.setCodigo( StrToInt ( self.edt_codigo.Text ) );
    oCargo.setCargo( self.edt_cargo.Text );
    oCargo.getoDepartamento.setCodigo( StrToInt ( edt_cod_departamento.Text ) );
    oCargo.getoDepartamento.setDepartamento( edt_pesquisar_departamento_cargo.Text );
    oCargo.setDataCad( Date );
    oCargo.setUltAlt( Date );
    oCargo.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );

    if Self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
       aCtrlCargos.salvar( oCargo.clone )
    else //EXCLUIR
       aCtrlCargos.excluir( oCargo.clone );

    self.sair;
  end;
end;

procedure Tform_cadastro_cargos.setFrmConsultaDepartamentos(pConsulta: TObject);
begin
  aConsultaDepartamentos:= Tform_consulta_departamentos ( pConsulta );
end;

function Tform_cadastro_cargos.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_cargo.Text = '' then
  begin
    MessageDlg( 'O campo Cargo é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_cargo.SetFocus;
    Exit;
  end;

  if Self.edt_pesquisar_departamento_cargo.Text = '' then
  begin
    MessageDlg( 'O campo Departamento é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisar_departamento_cargo.SetFocus;
    Exit;
  end;

 Result:= true;
end;

end.
