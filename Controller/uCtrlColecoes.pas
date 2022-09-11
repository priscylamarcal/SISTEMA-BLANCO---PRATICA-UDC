unit uCtrlColecoes;

interface

uses uFilterSearch, uController, uDaoColecoes;

type ctrlColecoes = class( Ctrl )
  private
  protected
     aDaoColecao : daoColecoes;
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

{ ctrlColecoes }

function ctrlColecoes.carregar(pObj: TObject): string;
begin
  aDaoColecao.carregar( pObj );
end;

constructor ctrlColecoes.crieObj;
begin
  aDaoColecao:= daoColecoes.crieObj;
end;

destructor ctrlColecoes.destrua_se;
begin
  aDaoColecao.destrua_se;
end;

function ctrlColecoes.excluir(pObj: TObject): string;
begin

end;

function ctrlColecoes.getDS: TObject;
begin
  Result:= aDaoColecao.getDS;
end;

function ctrlColecoes.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoColecao.pesquisar( AFilter, pChave );
end;

function ctrlColecoes.salvar(pObj: TObject): string;
begin
  aDaoColecao.salvar( pObj );
end;

procedure ctrlColecoes.setDM(pDM: TObject);
begin
  inherited;
  aDaoColecao.setDM( pDM );
end;

end.
