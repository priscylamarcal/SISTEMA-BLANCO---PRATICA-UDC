unit uCtrlCores;

interface

uses uController,
     uFilterSearch,
     uDaoCores;

type ctrlCores = class( Ctrl )
  private
  protected
    aDaoCores : daoCores;
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

{ ctrlCores }

function ctrlCores.carregar(pObj: TObject): string;
begin
  aDaoCores.carregar( pObj );
end;

constructor ctrlCores.crieObj;
begin
  aDaoCores:= daoCores.crieObj;
end;

destructor ctrlCores.destrua_se;
begin
  aDaoCores.destrua_se;
end;

function ctrlCores.excluir(pObj: TObject): string;
begin

end;

function ctrlCores.getDS: TObject;
begin
  Result:= aDaoCores.getDS;
end;

function ctrlCores.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoCores.pesquisar( AFilter, pChave );
end;

function ctrlCores.salvar(pObj: TObject): string;
begin
  aDaoCores.salvar( pobj );
end;

procedure ctrlCores.setDM(pDM: TObject);
begin
  inherited;
  aDaoCores.setDM( pDM );
end;

end.
