unit uCtrlCidades;

interface

uses uController, uFilterSearch, uDaoCidades;

type ctrlCidades = class( Ctrl )
  private
  protected
    aDaoCidade : daoCidades;
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

{ ctrlCidades }

function ctrlCidades.carregar(pObj: TObject): string;
begin
  aDaoCidade.carregar( pObj );
end;

constructor ctrlCidades.crieObj;
begin
  aDaoCidade:= daoCidades.crieObj;
end;

destructor ctrlCidades.destrua_se;
begin
  aDaoCidade.destrua_se;
end;

function ctrlCidades.excluir(pObj: TObject): string;
begin

end;

function ctrlCidades.getDS: TObject;
begin
  Result:= aDaoCidade.getDS;
end;

function ctrlCidades.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoCidade.pesquisar( AFilter, pChave );
end;

function ctrlCidades.salvar(pObj: TObject): string;
begin
  aDaoCidade.salvar( pObj );
end;

procedure ctrlCidades.setDM(pDM: TObject);
begin
  inherited;
  aDaoCidade.setDM( pDM );
end;

end.
