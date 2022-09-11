unit uCtrlTiposContatos;

interface

uses uDaoTiposContatos, uController, uFilterSearch;

type ctrlTiposContatos = class( Ctrl )
  private
  protected
    aDaoTiposContatos : daoTiposContatos;
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

{ ctrlTiposContatos }

function ctrlTiposContatos.carregar(pObj: TObject): string;
begin
  aDaoTiposContatos.carregar( pObj );
end;

constructor ctrlTiposContatos.crieObj;
begin
   aDaoTiposContatos:= daoTiposContatos.crieObj;
end;

destructor ctrlTiposContatos.destrua_se;
begin
  aDaoTiposContatos.destrua_se;
end;

function ctrlTiposContatos.excluir(pObj: TObject): string;
begin

end;

function ctrlTiposContatos.getDS: TObject;
begin
  Result:= aDaoTiposContatos.getDS;
end;

function ctrlTiposContatos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
  Result:= aDaoTiposContatos.pesquisar( AFilter, pChave );
end;

function ctrlTiposContatos.salvar(pObj: TObject): string;
begin
  aDaoTiposContatos.salvar( pObj );
end;

procedure ctrlTiposContatos.setDM(pDM: TObject);
begin
  inherited;
  aDaoTiposContatos.setDM( pDM );
end;

end.
