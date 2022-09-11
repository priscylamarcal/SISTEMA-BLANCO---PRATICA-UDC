unit uCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit;

type
  Tform_cadastro_pai = class(TForm)
    pnl_fundo: TPanel;
    pnl_botao_salvar: TPanel;
    btn_botao_salvar: TSpeedButton;
    pnl_bottom: TPanel;
    lbl_codigo: TLabel;
    edt_codigo: PriTEdit;
    edt_data_cadastro: PriTEdit;
    edt_data_ult_alt: PriTEdit;
    edt_cod_usuario: PriTEdit;
    lbl_data_cadastro: TLabel;
    lbl_data_ult_alt: TLabel;
    lbl_cod_usuario: TLabel;
    pnl_botao_cancelar: TPanel;
    btn_botao_cancelar: TSpeedButton;
    ScrollBox1: TScrollBox;

    procedure btn_botao_salvarMouseEnter(Sender: TObject);
    procedure btn_botao_salvarMouseLeave(Sender: TObject);

    procedure btn_botao_sairClick(Sender: TObject);
    procedure btn_botao_salvarClick(Sender: TObject);

    procedure btn_botao_cancelarMouseEnter(Sender: TObject);
    procedure btn_botao_cancelarMouseLeave(Sender: TObject);
    procedure btn_botao_cancelarClick(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    salvou : Boolean;

    procedure conhecaObj ( pCtrl, pObj : TObject );  virtual;
    procedure salvar;         virtual;
    procedure sair;           virtual;
    procedure limpaEdt;       virtual;
    procedure carregaEdt;     virtual;
    procedure bloqueiaEdt;    virtual;
    procedure desbloqueiaEdt; virtual;
    function validaFormulario : Boolean; virtual;
  end;

var
  form_cadastro_pai: Tform_cadastro_pai;

implementation

{$R *.dfm}

procedure Tform_cadastro_pai.btn_botao_salvarClick(Sender: TObject);
begin
  salvar;
end;

procedure Tform_cadastro_pai.bloqueiaEdt;
begin
  Self.edt_codigo.Enabled:= false;
end;

procedure Tform_cadastro_pai.carregaEdt;
begin

end;

procedure Tform_cadastro_pai.conhecaObj(pCtrl, pObj: TObject);
begin

end;

procedure Tform_cadastro_pai.desbloqueiaEdt;
begin

end;

procedure Tform_cadastro_pai.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with ScrollBox1.VertScrollBar do
  begin
    Position := Position + Increment;
  end;
end;

procedure Tform_cadastro_pai.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  with ScrollBox1.VertScrollBar do
  begin
    Position := Position - Increment;
  end;
end;

procedure Tform_cadastro_pai.FormShow(Sender: TObject);
begin
//  edt_data_cadastro.Text:= DateToStr(Date());
//  edt_data_ult_alt.Text:= DateToStr(Date());

  edt_cod_usuario.Text:= '1';
end;

procedure Tform_cadastro_pai.limpaEdt;
begin
  Self.edt_codigo.Text:= '0';
end;

procedure Tform_cadastro_pai.sair;
begin
  close;
end;

procedure Tform_cadastro_pai.salvar;
begin

end;

function Tform_cadastro_pai.validaFormulario: Boolean;
begin

end;

procedure Tform_cadastro_pai.btn_botao_sairClick(Sender: TObject);
begin
  sair;
end;

//---------------------ESTILOS---------------------//

procedure Tform_cadastro_pai.btn_botao_salvarMouseEnter(Sender: TObject);
begin
  btn_botao_salvar.Font.Style:= [fsBold];
end;

procedure Tform_cadastro_pai.btn_botao_salvarMouseLeave(Sender: TObject);
begin
  btn_botao_salvar.Font.Style:= [];
end;

procedure Tform_cadastro_pai.btn_botao_cancelarClick(Sender: TObject);
begin
  sair;
end;

procedure Tform_cadastro_pai.btn_botao_cancelarMouseEnter(Sender: TObject);
begin
  btn_botao_cancelar.Font.Style:= [fsBold];
end;

procedure Tform_cadastro_pai.btn_botao_cancelarMouseLeave(Sender: TObject);
begin
  pnl_botao_cancelar.Color:= $00F5F5F5;
  btn_botao_cancelar.Font.Style:= [];
end;

end.
