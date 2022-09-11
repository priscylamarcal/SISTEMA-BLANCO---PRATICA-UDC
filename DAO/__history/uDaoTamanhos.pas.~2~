unit uDaoTamanhos;

interface

uses uDAO, uFilterSearch, uTamanhos;

type daoTamanhos = class( DAO )
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

{ daoTamanhos }

function daoTamanhos.carregar(pObj: TObject): string;
var mTamanho : Tamanhos;
begin
  mTamanho:= Tamanhos( pObj );

  mTamanho.setCodigo( aDM.QTamanhos.FieldByName('CODSIGLA').Value );
  mTamanho.setSiglaTamanho( aDM.QTamanhos.FieldByName('SIGLA').AsString );
  mTamanho.setLargura( aDM.QTamanhos.FieldByName('LARGURA').AsString );
  mTamanho.setAltura( aDM.QTamanhos.FieldByName('ALTURA').AsString );
  mTamanho.setComprimento( aDM.QTamanhos.FieldByName('COMPRIMENTO').AsString );
  mTamanho.setDataCad( aDM.QTamanhos.FieldByName('DATACAD').AsDateTime );
end;

constructor daoTamanhos.crieObj;
begin
  inherited;

end;

function daoTamanhos.excluir(pObj: TObject): string;
begin

end;

function daoTamanhos.getDS: TObject;
begin
  Result:= aDM.DSTamanhos;
end;

function daoTamanhos.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= '';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM SIGLA_TAMANHOS WHERE CODSIGLA =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM SIGLA_TAMANHOS WHERE SIGLA LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM SIGLA_TAMANHOS ORDER BY CODSIGLA';
     end;

    end;

    aDM.QTamanhos.Active:= false;
    aDM.QTamanhos.SQL.Text:=msql;
    aDM.QTamanhos.Open;
    result:= '';
end;

function daoTamanhos.salvar(pObj: TObject): string;
var mTamanho : Tamanhos;
begin
  mTamanho:= Tamanhos( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mTamanho.getCodigo = 0 then
       aDM.QTamanhos.Insert
    else
       aDM.QTamanhos.Edit;

    aDM.QTamanhos.FieldByName('CODSIGLA').AsInteger:= mTamanho.getCodigo;
    aDM.QTamanhos.FieldByName('SIGLA').AsAnsiString:= mTamanho.getSiglaTamanho;
    aDM.QTamanhos.FieldByName('LARGURA').AsAnsiString:= mTamanho.getLargura;
    aDM.QTamanhos.FieldByName('ALTURA').AsAnsiString:= mTamanho.getAltura;
    aDM.QTamanhos.FieldByName('COMPRIMENTO').AsAnsiString:= mTamanho.getComprimento;
    aDM.QTamanhos.FieldByName('DATACAD').AsDateTime:= mTamanho.getDataCad;

    aDM.QTamanhos.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
