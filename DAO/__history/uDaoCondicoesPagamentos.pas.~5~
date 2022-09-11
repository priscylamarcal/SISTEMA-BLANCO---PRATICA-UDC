unit uDaoCondicoesPagamentos;

interface

uses uDAO, uFilterSearch, uCondicoesPagamentos, uFormaPagamento;

type daoCondicoesPagamentos = class ( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
end;

implementation

uses
  System.SysUtils, Vcl.ComCtrls;

{ daoCondicoesPagamentos }

function daoCondicoesPagamentos.carregar(pObj: TObject): string;
var mForma : FormasPagamentos; mCondicao : CondicoesPagamentos;
begin
  mCondicao:= CondicoesPagamentos( pObj );

  mForma:= mCondicao.getaFormaPagamento;

  mCondicao.setCodigo( aDM.QCondicoes.FieldByName('CODCONDICAO').Value );
  mCondicao.setCondicao( aDM.QCondicoes.FieldByName('CONDICAO').AsString );
  mCondicao.setTotalParcelas( aDM.QCondicoes.FieldByName('PARCELAS').Value );
  mCondicao.setJuros( aDM.QCondicoes.FieldByName('JUROS').AsFloat );
  mCondicao.setDesconto( aDM.QCondicoes.FieldByName('DESCONTO').AsFloat );
  mCondicao.setMulta( aDM.QCondicoes.FieldByName('MULTA').AsFloat );
  mCondicao.setDias( aDM.QCondicoes.FieldByName('DIAS').Value );
  mCondicao.setPorcentagem( aDM.QCondicoes.FieldByName('PORCENTAGEM').AsFloat );

  mForma.setCodigo( aDM.QFormasPagamentos.FieldByName('CODFORMA').Value );
  mForma.setFormaPagamento( aDM.QFormasPagamentos.FieldByName('FORMA').Value );

  mCondicao.setDataCad( aDM.QCondicoes.FieldByName('DATACAD').AsDateTime );
end;

constructor daoCondicoesPagamentos.crieObj;
begin
  inherited;

end;

function daoCondicoesPagamentos.excluir(pObj: TObject): string;
begin

end;

function daoCondicoesPagamentos.getDS: TObject;
begin
  Result:= aDM.DSCondicoes;
end;

function daoCondicoesPagamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM CONDICOES_PAGAMENTOS';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM CONDICOES_PAGAMENTOS WHERE CODCONDICAO =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM CONDICOES_PAGAMENTOS WHERE CONDICAO LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM CONDICOES_PAGAMENTOS ORDER BY CODCONDICAO';
     end;

    end;

    aDM.QCondicoes.Active:= false;
    aDM.QCondicoes.SQL.Text:=msql;
    aDM.QCondicoes.Open;
    result:= '';
end;

function daoCondicoesPagamentos.salvar(pObj: TObject): string;
var mForma : FormasPagamentos; mCondicao : CondicoesPagamentos; item : TListItem; lista : TListView;
begin
  mCondicao:= CondicoesPagamentos( pObj );

  mForma:= mCondicao.getaFormaPagamento;

  aDM.Transacao.StartTransaction;
  try
    if mCondicao.getCodigo = 0 then
       aDM.QCondicoes.Insert
    else
       aDM.QCondicoes.Edit;

    aDM.QCondicoes.FieldByName('CODCONDICAO').AsInteger:= mCondicao.getCodigo;
    aDM.QCondicoes.FieldByName('CONDICAO').AsString:= mCondicao.getCondicao;
    aDM.QCondicoes.FieldByName('DATACAD').AsDateTime:= mCondicao.getDataCad;
    aDM.QCondicoes.FieldByName('PARCELAS').AsInteger:= mCondicao.getTotalParcelas;
    aDM.QCondicoes.FieldByName('JUROS').AsFloat:= mCondicao.getJuros;
    aDM.QCondicoes.FieldByName('DESCONTO').AsFloat:= mCondicao.getDesconto;
    aDM.QCondicoes.FieldByName('MULTA').AsFloat:= mCondicao.getMulta;
    aDM.QCondicoes.FieldByName('DIAS').Value:= mCondicao.getDias;
    aDM.QCondicoes.FieldByName('PORCENTAGEM').AsFloat:= mCondicao.getPorcentagem;
    aDM.QCondicoes.FieldByName('CODFORMA').AsInteger:= mForma.getCodigo;

    aDM.QCondicoes.Post;

    aDM.Transacao.Commit;
  except
    aDM.Transacao.Rollback;
  end;
end;

end.
