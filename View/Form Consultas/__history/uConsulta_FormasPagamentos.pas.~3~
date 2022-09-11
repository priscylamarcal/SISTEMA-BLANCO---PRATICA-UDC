unit uConsulta_FormasPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroFormasPagamentos, uFormaPagamento, uCtrlFormasPagamentos,
  uFilterSearch;

type
  Tform_consulta_formas_pagamentos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroFormasPagamentos : Tform_cadastro_formas_pagamentos;

    aFormaPagamento : FormasPagamentos;
    aCtrlFormasPagamentos : ctrlFormasPagamentos;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_formas_pagamentos: Tform_consulta_formas_pagamentos;

implementation

{$R *.dfm}

{ Tform_consulta_formas_pagamentos }

procedure Tform_consulta_formas_pagamentos.alterar;
begin
  inherited;
  aCtrlFormasPagamentos.carregar( aFormaPagamento );
  oCadastroFormasPagamentos.conhecaObj( aCtrlFormasPagamentos, aFormaPagamento );

  oCadastroFormasPagamentos.Caption:= 'Alteração de Forma de Pagamento';

  oCadastroFormasPagamentos.ShowModal;
end;

procedure Tform_consulta_formas_pagamentos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aFormaPagamento:= FormasPagamentos( pObj );
  aCtrlFormasPagamentos:= ctrlFormasPagamentos( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlFormasPagamentos.getDS );
end;

procedure Tform_consulta_formas_pagamentos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_formas_pagamentos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_formas_pagamentos.novo;
var form : Tform_cadastro_formas_pagamentos;
begin
  inherited;
  oCadastroFormasPagamentos.conhecaObj( aCtrlFormasPagamentos, aFormaPagamento );
  oCadastroFormasPagamentos.limpaEdt;

  oCadastroFormasPagamentos.Caption:= 'Cadastro de Forma de Pagamento';

  oCadastroFormasPagamentos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_formas_pagamentos.pesquisar;
var vFilter : TFilterSearch;
    pchave : string;
begin
  //inherited;
  VFilter   := TFilterSearch.Create;

  try
    Try
     case combobox_tipo_filtro.ItemIndex of
      0:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
           Exit;
          end;

          vFilter.TipoConsulta:= TpCCodigo;
          vFilter.Codigo:= StrToInt(edt_pesquisa.Text);
        end;
    1:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCParam;
          VFilter.Parametro    := Uppercase( edt_pesquisa.Text );
        end;
      2:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlFormasPagamentos.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_formas_pagamentos.sair;
var mFormas : FormasPagamentos;
begin
  if self.btn_botao_sair.Caption= 'Selecionar' then
  begin
    mFormas:= FormasPagamentos.crieObj;
    aCtrlFormasPagamentos.carregar( TObject ( mFormas ) );
    aFormaPagamento.setCodigo( mFormas.getCodigo );
    aFormaPagamento.setFormaPagamento( mFormas.getFormaPagamento );

    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_formas_pagamentos.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_formas_pagamentos;
begin
  inherited;
  oCadastroFormasPagamentos:= Tform_cadastro_formas_pagamentos( pObj );

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_formas_pagamentos.spb_botao_pesquisarClick(
  Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_formas_pagamentos.tipoFiltro;
begin
  case combobox_tipo_filtro.ItemIndex of
    0:  //código
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CÓDIGO!';
        edt_pesquisa.NumbersOnly:= true;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    1:  //forma de pagamento
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR FORMA DE PAGAMENTO!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
