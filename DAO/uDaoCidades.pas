unit uDaoCidades;

interface

uses uCidades, uEstados, uFilterSearch, uDAO, uPaises;

type daoCidades = class( DAO )
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

{ daoCidades }

function daoCidades.carregar(pObj: TObject): string;
var mCidade : Cidades; mEstado : Estados; mPais : Paises;
begin
  mCidade:= Cidades( pObj );
  mEstado:= mCidade.getoEstado;

  mCidade.setCodigo( aDM.QCidades.FieldByName('CODCIDADE').Value );
  mCidade.setCidade( aDM.QCidades.FieldByName('CIDADE').AsString );
  mCidade.setSigla( aDM.QCidades.FieldByName('SIGLA').AsString );
  mCidade.setDDD( aDM.QCidades.FieldByName('DDD').AsString );
  mCidade.getoEstado.setCodigo( aDM.QCidades.FieldByName('CODESTADO').Value );
  mCidade.getoEstado.setEstado( aDM.QCidades.FieldByName('ESTADO').AsString );
  mCidade.getoEstado.setUF( aDM.QCidades.FieldByName('UF').AsString );

  mCidade.setDataCad( aDM.QCidades.FieldByName('DATACAD').AsDateTime );

//  mEstado.setCodigo( aDM.QEstados.FieldByName('CODESTADO').Value );
//  mEstado.setEstado( aDM.QEstados.FieldByName('ESTADO').AsString );
//  mEstado.setUF( aDM.QEstados.FieldByName('UF').AsString );
//
//  mPais.setCodigo( aDM.QEstados.FieldByName('CODPAIS').Value );
//  mPais.setPais( aDM.QPaises.FieldByName('PAIS').AsString );
//  mPais.setDDI( aDM.QPaises.FieldByName('DDI').AsString );
//  mPais.setSigla( aDM.QPaises.FieldByName('SIGLA').AsString );
end;

constructor daoCidades.crieObj;
begin
  inherited;

end;

function daoCidades.excluir(pObj: TObject): string;
begin

end;

function daoCidades.getDS: TObject;
begin
  Result:= aDM.DSCidades;
end;

function daoCidades.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM CIDADES';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM CIDADES WHERE CODCIDADE =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM CIDADES WHERE CIDADE LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM CIDADES ORDER BY CODCIDADE';
     end;

    end;

    aDM.QCidades.Active:= false;
    aDM.QCidades.SQL.Text:=msql;
    aDM.QCidades.Open;
    result:= '';

end;

function daoCidades.salvar(pObj: TObject): string;
var mCidade : Cidades; mEstado : Estados;
begin
  mCidade:= Cidades( pObj );
  mEstado:= mCidade.getoEstado;

  aDM.Transacao.StartTransaction;
  try
    if mCidade.getCodigo = 0 then
       aDM.QCidades.Insert
    else
       aDM.QCidades.Edit;

    aDM.QCidades.FieldByName('CODCIDADE').AsInteger:= mCidade.getCodigo;
    aDM.QCidades.FieldByName('CIDADE').AsString:= mCidade.getCidade;
    aDM.QCidades.FieldByName('SIGLA').AsString:= mCidade.getSigla;
    aDM.QCidades.FieldByName('DDD').AsString:= mCidade.getDDD;
    aDM.QCidades.FieldByName('CODESTADO').AsInteger:= mCidade.getoEstado.getCodigo;
    aDM.QCidades.FieldByName('ESTADO').AsString:= mCidade.getoEstado.getEstado;
    aDM.QCidades.FieldByName('DATACAD').AsDateTime:= mCidade.getDataCad;
    aDM.QCidades.FieldByName('UF').AsString:= mCidade.getoEstado.getUF;

    aDM.QCidades.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;

end;

end.
