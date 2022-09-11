unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, campoEdit,
  Vcl.Buttons, Vcl.ExtCtrls,
  uPaises,
  uCtrlPaises;

type
  Tform_cadastro_paises = class(Tform_cadastro_pai)
    edt_pais: PriTEdit;
    edt_sigla: PriTEdit;
    edt_moeda: PriTEdit;
    edt_ddi: PriTEdit;
    lbl_pais: TLabel;
    lbl_sigla: TLabel;
    lbl_moeda: TLabel;
    lbl_ddi: TLabel;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;

    procedure SpeedButton1MouseEnter(Sender: TObject);
    procedure SpeedButton1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    oPais : Paises;
    aCtrlPais : ctrlPaises;
  public
    { Public declarations }
    procedure conhecaObj ( pCtrl, pObj : TObject );  override;
    procedure salvar;         override;
    procedure sair;           override;
    procedure limpaEdt;       override;
    procedure carregaEdt;     override;
    procedure bloqueiaEdt;    override;
    procedure desbloqueiaEdt; override;
  end;

var
  form_cadastro_paises: Tform_cadastro_paises;

implementation

{$R *.dfm}

{ Tform_cadastro_paises }

procedure Tform_cadastro_paises.bloqueiaEdt;
begin
  inherited;
  Self.edt_pais.Enabled:= false;
  Self.edt_sigla.Enabled:= false;
  Self.edt_ddi.Enabled:= false;
  Self.edt_moeda.Enabled:= false;
end;

procedure Tform_cadastro_paises.carregaEdt;
begin
  inherited;
  Self.edt_pais.Text:= oPais.getPais;
  Self.edt_sigla.Text:= oPais.getSigla;
  Self.edt_ddi.Text:= oPais.getDDI;
  Self.edt_moeda.Text:= oPais.getMoeda;
end;

procedure Tform_cadastro_paises.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oPais:= Paises( pObj );
  aCtrlPais:= ctrlPaises( pCtrl );
end;

procedure Tform_cadastro_paises.desbloqueiaEdt;
begin
  inherited;
  Self.edt_pais.Enabled:= true;
  Self.edt_sigla.Enabled:= true;
  Self.edt_ddi.Enabled:= true;
  Self.edt_moeda.Enabled:= true;
end;

procedure Tform_cadastro_paises.limpaEdt;
begin
  inherited;
  Self.edt_pais.Clear;
  Self.edt_sigla.Clear;
  Self.edt_ddi.Clear;
  Self.edt_moeda.Clear;
end;

procedure Tform_cadastro_paises.sair;
begin
  inherited;

end;

procedure Tform_cadastro_paises.salvar;
begin
  inherited;
  if Self.edt_pais.Text = '' then
  begin
    ShowMessage('O campo País é obrigatório!');
    Self.edt_pais.SetFocus;
  end
  else if Self.edt_sigla.Text = '' then
  begin
    ShowMessage('O campo Sigla é obrigatório!');
    Self.edt_sigla.SetFocus;
  end
  else
  begin
    oPais.setCodigo( StrToInt ( Self.edt_codigo.Text ) );
    oPais.setPais( Self.edt_pais.Text );
    oPais.setSigla( Self.edt_sigla.Text );
    oPais.setDDI( Self.edt_ddi.Text );
    oPais.setMoeda( Self.edt_moeda.Text );
    oPais.setDataCad( Self.edt_data_cadastro.Text );
    oPais.setUltAlt( Self.edt_data_ult_alt.Text );
    oPais.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );
    if Self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
       aCtrlPais.salvar( oPais.clone )
    else //EXCLUIR
       aCtrlPais.excluir( oPais.clone );
  end;
end;

procedure Tform_cadastro_paises.SpeedButton1MouseEnter(Sender: TObject);
begin
  SpeedButton1.Font.Style:= [fsBold];
end;

procedure Tform_cadastro_paises.SpeedButton1MouseLeave(Sender: TObject);
begin
  Panel1.Color:= $00F5F5F5;
  SpeedButton1.Font.Style:= [];
end;

end.
