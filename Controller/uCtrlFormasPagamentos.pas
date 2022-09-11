unit uCtrlFormasPagamentos;

interface

uses uController, uFilterSearch, uDaoFormasPagamentos;

type ctrlFormasPagamentos = class( Ctrl )
  private
  protected
    aDaoFormaPagamento : daoFormasPagamentos;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
end;

implementation

{ ctrlFormasPagamentos }

function ctrlFormasPagamentos.carregar(pObj: TObject): string;
begin
  aDaoFormaPagamento.carregar( pObj );
end;

constructor ctrlFormasPagamentos.crieObj;
begin
  aDaoFormaPagamento:= daoFormasPagamentos.crieObj;
end;

destructor ctrlFormasPagamentos.destrua_se;
begin
  aDaoFormaPagamento.destrua_se;
end;

function ctrlFormasPagamentos.excluir(pObj: TObject): string;
begin

end;

function ctrlFormasPagamentos.getDS: TObject;
begin
  Result:= aDaoFormaPagamento.getDS;
end;

function ctrlFormasPagamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
  Result:= aDaoFormaPagamento.pesquisar( AFilter, pChave );
end;

function ctrlFormasPagamentos.salvar(pObj: TObject): string;
begin
  aDaoFormaPagamento.salvar( pObj );
end;

procedure ctrlFormasPagamentos.setDM(pDM: TObject);
begin
  inherited;
  aDaoFormaPagamento.setDM( pDM );
end;

end.
