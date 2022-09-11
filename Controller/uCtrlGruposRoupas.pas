unit uCtrlGruposRoupas;

interface

uses uController, uFilterSearch, uDaoGruposRoupas;

type ctrlGruposRoupas = class( Ctrl )
  private
  protected
    aDaoGrupoRoupa : daoGruposRoupas;
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

{ ctrlGruposRoupas }

function ctrlGruposRoupas.carregar(pObj: TObject): string;
begin
  aDaoGrupoRoupa.carregar( pObj );
end;

constructor ctrlGruposRoupas.crieObj;
begin
  inherited;
  aDaoGrupoRoupa:= daoGruposRoupas.crieObj;
end;

destructor ctrlGruposRoupas.destrua_se;
begin
  aDaoGrupoRoupa.destrua_se;
end;

function ctrlGruposRoupas.excluir(pObj: TObject): string;
begin

end;

function ctrlGruposRoupas.getDS: TObject;
begin
  Result:= aDaoGrupoRoupa.getDS;
end;

function ctrlGruposRoupas.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
 Result := aDaoGrupoRoupa.Pesquisar( AFilter, pChave );
end;

function ctrlGruposRoupas.salvar(pObj: TObject): string;
begin
  aDaoGrupoRoupa.salvar( pObj );
end;

procedure ctrlGruposRoupas.setDM(pDM: TObject);
begin
  inherited;
  aDaoGrupoRoupa.setDM( pDM );
end;

end.
