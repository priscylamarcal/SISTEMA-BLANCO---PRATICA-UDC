unit uDaoFormasPagamentos;

interface

uses uFilterSearch, uDAO, uFormaPagamento;

type daoFormasPagamentos = class( DAO )
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
  System.SysUtils;

{ daoFormasPagamentos }

function daoFormasPagamentos.carregar(pObj: TObject): string;
var mFormaPagamento : FormasPagamentos;
begin
  mFormaPagamento:= FormasPagamentos( pObj );

  mFormaPagamento.setCodigo( aDM.QFormasPagamentos.FieldByName('CODFORMA').Value );
  mFormaPagamento.setFormaPagamento( aDM.QFormasPagamentos.FieldByName('FORMA').AsString );
  mFormaPagamento.setDataCad( aDM.QFormasPagamentos.FieldByName('DATACAD').AsDateTime );
end;

constructor daoFormasPagamentos.crieObj;
begin
  inherited;

end;

function daoFormasPagamentos.excluir(pObj: TObject): string;
begin

end;

function daoFormasPagamentos.getDS: TObject;
begin
  Result:= aDM.DSFormasPagamentos;
end;

function daoFormasPagamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= '';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM FORMAS_PAGAMENTOS WHERE CODFORMA =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM FORMAS_PAGAMENTOS WHERE FORMA LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM FORMAS_PAGAMENTOS ORDER BY CODFORMA';
     end;

    end;

    aDM.QFormasPagamentos.Active:= False;
    aDM.QFormasPagamentos.SQL.Text:= msql;
    aDM.QFormasPagamentos.Open;
    Result:= '';
end;

function daoFormasPagamentos.salvar(pObj: TObject): string;
var mFormaPagamento : FormasPagamentos;
begin
  mFormaPagamento:= FormasPagamentos( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mFormaPagamento.getCodigo = 0 then
       aDM.QFormasPagamentos.Insert
    else
       aDM.QFormasPagamentos.Edit;

    aDM.QFormasPagamentos.FieldByName('CODFORMA').AsInteger:= mFormaPagamento.getCodigo;
    aDM.QFormasPagamentos.FieldByName('FORMA').AsString:= mFormaPagamento.getFormaPagamento;
    aDM.QFormasPagamentos.FieldByName('DATACAD').AsDateTime:= mFormaPagamento.getDataCad;

    aDM.QFormasPagamentos.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
