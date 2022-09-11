unit uDaoRoupas;

interface

uses uDAO, uFilterSearch, uGruposRoupas, uMarcas, uCores, uTamanhos,
  uFornecedores, uColecoes, uRoupas;

type daoRoupas = class( DAO )
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

{ daoRoupas }

function daoRoupas.carregar(pObj: TObject): string;
var mRoupa : Roupas; mGrupoRoupa : GruposRoupas; mMarca : Marcas; mCor : Cores;
    mTamanho : Tamanhos; mFornecedor : Fornecedores; mColecao : Colecoes;
begin
  mRoupa:= Roupas( pObj );

  mGrupoRoupa:= mRoupa.getoGrupoRoupa;
  mMarca:= mRoupa.getaMarca;
  mCor:= mRoupa.getaCor;
  mTamanho:= mRoupa.getoTamanho;
  mFornecedor:= mRoupa.getoFornecedor;
  mColecao:= mRoupa.getaColecao;

  mRoupa.setCodigo( aDM.QRoupas.FieldByName('COD_ROUPA').Value );
  mRoupa.setDescricao( aDM.QRoupas.FieldByName('DESCRICAO_ROUPA').AsString );
  mRoupa.setCodBarra( aDM.QRoupas.FieldByName('COD_BARRA').AsString );
  mRoupa.setReferencia( aDM.QRoupas.FieldByName('REFERENCIA').AsString );
  mRoupa.setValorCusto( aDM.QRoupas.FieldByName('VALOR_CUSTO').AsFloat );
  mRoupa.setLucro( aDM.QRoupas.FieldByName('LUCRO').AsFloat );
  mRoupa.setValorVenda( aDM.QRoupas.FieldByName('VALOR_VENDA').AsFloat );
  mRoupa.setObs( aDM.QRoupas.FieldByName('OBS').AsString );

  mRoupa.setDataCad( aDM.QRoupas.FieldByName('DATACAD').AsDateTime );
  mRoupa.setUltAlt( aDM.QRoupas.FieldByName('ULTALT').AsDateTime );
  mRoupa.setCodUsu( aDM.QRoupas.FieldByName('CODUSU').Value );

  mRoupa.getoGrupoRoupa.setCodigo( aDM.QRoupas.FieldByName('CODGRUPOROUPA').Value );
  mRoupa.getoGrupoRoupa.setGrupoRoupa( aDM.QRoupas.FieldByName('GRUPO_ROUPA').AsString );

  mRoupa.getaMarca.setCodigo( aDM.QRoupas.FieldByName('CODMARCA').Value );
  mRoupa.getaMarca.setMarca( aDM.QRoupas.FieldByName('MARCA').AsString );

  mRoupa.getaCor.setCodigo( aDM.QRoupas.FieldByName('CODCOR').Value );

  mRoupa.getoTamanho.setCodigo( aDM.QRoupas.FieldByName('CODTAMANHO').Value );

  mRoupa.getoFornecedor.setCodigo( aDM.QRoupas.FieldByName('CODFORNECEDOR').Value );
  mRoupa.getoFornecedor.setNomeRazaoSocial( aDM.QRoupas.FieldByName('FORNECEDOR').AsString );

  mRoupa.getaColecao.setCodigo( aDM.QRoupas.FieldByName('CODCOLECAO').Value );
  mRoupa.getaColecao.setColecao( aDM.QRoupas.FieldByName('COLECAO').AsString );
end;

constructor daoRoupas.crieObj;
begin
  inherited;

end;

function daoRoupas.excluir(pObj: TObject): string;
begin

end;

function daoRoupas.getDS: TObject;
begin
  Result:= aDM.DSRoupas;
end;

function daoRoupas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM ROUPAS';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM ROUPAS WHERE COD_ROUPA =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM ROUPAS WHERE DESCRICAO_ROUPA LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM ROUPAS ORDER BY COD_ROUPA';
     end;

    end;

    aDM.QRoupas.Active:= false;
    aDM.QRoupas.SQL.Text:=msql;
    aDM.QRoupas.Open;
    result:= '';
end;

function daoRoupas.salvar(pObj: TObject): string;
var mRoupa : Roupas; mGrupoRoupa : GruposRoupas; mMarca : Marcas; mCor : Cores;
    mTamanho : Tamanhos; mFornecedor : Fornecedores; mColecao : Colecoes;
begin
  mRoupa:= Roupas( pObj );

  mGrupoRoupa:= mRoupa.getoGrupoRoupa;
  mMarca:= mRoupa.getaMarca;
  mCor:= mRoupa.getaCor;
  mTamanho:= mRoupa.getoTamanho;
  mFornecedor:= mRoupa.getoFornecedor;
  mColecao:= mRoupa.getaColecao;

  aDM.Transacao.StartTransaction;
  try
    if mRoupa.getCodigo = 0 then
       aDM.QRoupas.Insert
    else
       aDM.QRoupas.Edit;

    aDM.QRoupas.FieldByName('COD_ROUPA').AsInteger:= mRoupa.getCodigo;
    aDM.QRoupas.FieldByName('DESCRICAO_ROUPA').AsString:= mRoupa.getDescricao;
    aDM.QRoupas.FieldByName('COD_BARRA').AsString:= mRoupa.getCodBarra;
    aDM.QRoupas.FieldByName('REFERENCIA').AsString:= mRoupa.getReferencia;
    aDM.QRoupas.FieldByName('VALOR_CUSTO').AsFloat:= mRoupa.getValorCusto;
    aDM.QRoupas.FieldByName('LUCRO').AsFloat:= mRoupa.getLucro;
    aDM.QRoupas.FieldByName('VALOR_VENDA').AsFloat:= mRoupa.getValorVenda;
    aDM.QRoupas.FieldByName('OBS').AsString:= mRoupa.getObs;

    aDM.QRoupas.FieldByName('DATACAD').AsDateTime:= mRoupa.getDataCad;
    aDM.QRoupas.FieldByName('ULTALT').AsDateTime:= mRoupa.getUltAlt;
    aDM.QRoupas.FieldByName('CODUSU').AsInteger:= mRoupa.getCodUsu;

    aDM.QRoupas.FieldByName('CODGRUPOROUPA').AsInteger := mGrupoRoupa.getCodigo;
    aDM.QRoupas.FieldByName('GRUPO_ROUPA').AsString := mGrupoRoupa.getGrupoRoupa;

    aDM.QRoupas.FieldByName('CODMARCA').AsInteger := mMarca.getCodigo;
    aDM.QRoupas.FieldByName('MARCA').AsString := mMarca.getMarca;

    aDM.QRoupas.FieldByName('CODCOR').AsInteger := mCor.getCodigo;

    aDM.QRoupas.FieldByName('CODTAMANHO').AsInteger := mTamanho.getCodigo;

    aDM.QRoupas.FieldByName('CODFORNECEDOR').AsInteger := mFornecedor.getCodigo;
    aDM.QRoupas.FieldByName('FORNECEDOR').AsString := mFornecedor.getNomeRazaoSocial;

    aDM.QRoupas.FieldByName('CODCOLECAO').AsInteger:= mColecao.getCodigo;
    aDM.QRoupas.FieldByName('COLECAO').AsString := mColecao.getColecao;

    aDM.QRoupas.Post;

    aDM.Transacao.Commit;
  except
    aDM.Transacao.Rollback;
  end;
end;

end.
