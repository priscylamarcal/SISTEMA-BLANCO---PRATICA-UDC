unit uCtrlRoupas;

interface

uses uDaoRoupas, uFilterSearch, uController, uRoupas;

type ctrlRoupas = class( Ctrl )
  private
  protected
    aDaoRoupas : daoRoupas;

    aRoupa : Roupas;
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

{ ctrlRoupas }

function ctrlRoupas.carregar(pObj: TObject): string;
begin

end;

constructor ctrlRoupas.crieObj;
begin
  aDaoRoupas:= daoRoupas.crieObj;
end;

destructor ctrlRoupas.destrua_se;
begin
  aDaoRoupas.destrua_se;
end;

function ctrlRoupas.excluir(pObj: TObject): string;
begin

end;

function ctrlRoupas.getDS: TObject;
begin
  Result:= aDaoRoupas.getDS;
end;

function ctrlRoupas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoRoupas.pesquisar( AFilter, pChave );
end;

function ctrlRoupas.salvar(pObj: TObject): string;
begin

end;

procedure ctrlRoupas.setDM(pDM: TObject);
begin
  inherited;
  aDaoRoupas.setDM( pDM );
end;

end.
