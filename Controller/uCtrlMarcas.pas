unit uCtrlMarcas;

interface

uses uFilterSearch, uController, uDaoMarcas;

type ctrlMarcas = class( Ctrl )
  private
  protected
    aDaoMarca : daoMarcas;
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

{ ctrlMarcas }

function ctrlMarcas.carregar(pObj: TObject): string;
begin
  aDaoMarca.carregar( pObj );
end;

constructor ctrlMarcas.crieObj;
begin
  aDaoMarca:= daoMarcas.crieObj;
end;

destructor ctrlMarcas.destrua_se;
begin
  aDaoMarca.destrua_se;
end;

function ctrlMarcas.excluir(pObj: TObject): string;
begin

end;

function ctrlMarcas.getDS: TObject;
begin
  Result:= aDaoMarca.getDS;
end;

function ctrlMarcas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoMarca.pesquisar( AFilter, pChave );
end;

function ctrlMarcas.salvar(pObj: TObject): string;
begin
  aDaoMarca.salvar( pObj );
end;

procedure ctrlMarcas.setDM(pDM: TObject);
begin
  inherited;
  aDaoMarca.setDM( pDM );
end;

end.
