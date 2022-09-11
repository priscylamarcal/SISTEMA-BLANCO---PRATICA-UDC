unit uConsulta_CondicoesPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroCondicoesPagamentos, uCondicoesPagamentos, uCtrlCondicoesPagamentos,
  uFilterSearch;

type
  Tform_consulta_condicoes_pagamentos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroCondicaoPagamento : Tform_cadastro_condicao_pagamento;

    aCondicaoPagamento : CondicoesPagamentos;
    aCtrlCondicoes : ctrlCondicoesPagamentos;
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
  form_consulta_condicoes_pagamentos: Tform_consulta_condicoes_pagamentos;

implementation

{$R *.dfm}

{ Tform_consulta_condicoes_pagamentos }

procedure Tform_consulta_condicoes_pagamentos.alterar;
var form : Tform_cadastro_condicao_pagamento;
begin
  inherited;
  aCtrlCondicoes.carregar( aCondicaoPagamento );
  oCadastroCondicaoPagamento.conhecaObj( aCtrlCondicoes, aCondicaoPagamento );

  oCadastroCondicaoPagamento.Caption:= 'Alteração de Condição de Pagamento';

  oCadastroCondicaoPagamento.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_condicoes_pagamentos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aCondicaoPagamento:= CondicoesPagamentos( pObj );
  aCtrlCondicoes:= ctrlCondicoesPagamentos( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlCondicoes.getDS );
end;

procedure Tform_consulta_condicoes_pagamentos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_condicoes_pagamentos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_condicoes_pagamentos.novo;
var form : Tform_cadastro_condicao_pagamento;
begin
  inherited;
  oCadastroCondicaoPagamento.conhecaObj( aCtrlCondicoes, aCondicaoPagamento );
  oCadastroCondicaoPagamento.ListView_condicao_pagamento.Clear;
  oCadastroCondicaoPagamento.limpaEdt;
  oCadastroCondicaoPagamento.limparItens;
  oCadastroCondicaoPagamento.lbl_total_porc.Caption:= '0';

  oCadastroCondicaoPagamento.btn_remover_item.Enabled:= False;
  oCadastroCondicaoPagamento.btn_botao_alterar_item.Enabled:= False;

  oCadastroCondicaoPagamento.Caption:= 'Cadastro de Condição de Pagamento';

  oCadastroCondicaoPagamento.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_condicoes_pagamentos.pesquisar;
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
    aCtrlCondicoes.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_condicoes_pagamentos.sair;
var mCondicao : CondicoesPagamentos;
begin
  if btn_botao_sair.Caption= 'Selecionar' then
  begin
    mCondicao:= CondicoesPagamentos.crieObj;
    aCtrlCondicoes.carregar( TObject ( mCondicao ) );
    aCondicaoPagamento.setCodigo( mCondicao.getCodigo );
    aCondicaoPagamento.setCondicao( mCondicao.getCondicao );
    aCondicaoPagamento.setaFormaPagamento( mCondicao.getaFormaPagamento );

    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_condicoes_pagamentos.setFrmCadastro(pObj: TObject);
begin
  inherited;
  oCadastroCondicaoPagamento := Tform_cadastro_condicao_pagamento( pObj );
end;

procedure Tform_consulta_condicoes_pagamentos.spb_botao_pesquisarClick(
  Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_condicoes_pagamentos.tipoFiltro;
begin
  inherited;
  case combobox_tipo_filtro.ItemIndex of
    0:  //c�digo
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CÓDIGO!';
        edt_pesquisa.NumbersOnly:= true;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    1:  //condição
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CONDIÇÃO DE PAGAMENTO!';
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
