unit uDaoFuncionarios;

interface

uses uDAO, uFilterSearch;

type daoFuncionarios = class( DAO )
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

{ daoFuncionarios }

function daoFuncionarios.carregar(pObj: TObject): string;
begin

end;

constructor daoFuncionarios.crieObj;
begin
  inherited;

end;

function daoFuncionarios.excluir(pObj: TObject): string;
begin

end;

function daoFuncionarios.getDS: TObject;
begin
  Result:= aDM.DSFuncionarios;
end;

function daoFuncionarios.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM FUNCIONARIOS';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM FUNCIONARIOS WHERE CODFUNC =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM FUNCIONARIOS WHERE FUNCIONARIO LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM FUNCIONARIOS ORDER BY CODFUNC';
     end;

    end;

    aDM.QFuncionarios.Active:= false;
    aDM.QFuncionarios.SQL.Text:=msql;
    aDM.QFuncionarios.Open;
    result:= '';
end;

function daoFuncionarios.salvar(pObj: TObject): string;
begin

end;

end.
