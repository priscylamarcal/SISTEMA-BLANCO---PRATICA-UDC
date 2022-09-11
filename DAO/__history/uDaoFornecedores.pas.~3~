unit uDaoFornecedores;

interface

uses uDAO, uFilterSearch, uFornecedores, uCidades, uTiposContatos,
  uCondicoesPagamentos;

type daoFornecedores = class( DAO )
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

{ daoFornecedores }

function daoFornecedores.carregar(pObj: TObject): string;
begin

end;

constructor daoFornecedores.crieObj;
begin
  inherited;

end;

function daoFornecedores.excluir(pObj: TObject): string;
begin

end;

function daoFornecedores.getDS: TObject;
begin
  Result:= aDM.DSFornecedores;
end;

function daoFornecedores.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM FORNECEDORES';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM FORNECEDORES WHERE CODFORN =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM FORNECEDORES WHERE NOME_RAZAO_SOCIAL LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM FORNECEDORES ORDER BY CODFORN';
     end;

    end;

    aDM.QFornecedores.Active:= false;
    aDM.QFornecedores.SQL.Text:=msql;
    aDM.QFornecedores.Open;
    result:= '';
end;

function daoFornecedores.salvar(pObj: TObject): string;
begin

end;

end.
