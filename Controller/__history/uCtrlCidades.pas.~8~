unit uCtrlCidades;

interface

uses uController, uDaoCidades, uFilterSearch, uCtrlEstados, uEstados, uCidades;

type ctrlCidades = class( Ctrl )
  private
  protected
    aDaoCidades : daoCidades;
    aCtrlEstados : ctrlEstados;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;

    procedure setCtrlEstados ( pCtrl : ctrlEstados );
    function getCtrlEstados : ctrlEstados;
end;

implementation

uses
  System.SysUtils;

{ ctrlCidades }

function ctrlCidades.carregar(pObj: TObject): string;
var mEstado : Estados; AFilter : TFilterSearch; pChave: string;
begin
  mEstado:= Cidades( pObj ).getoEstado;
  aCtrlEstados.pesquisar( AFilter, pChave );
  aCtrlEstados.carregar( mEstado );
  aDaoCidades.carregar( pObj );


end;

constructor ctrlCidades.crieObj;
begin
  inherited;
  aDaoCidades:= daoCidades.crieObj;
end;

destructor ctrlCidades.destrua_se;
begin
  aDaoCidades.destrua_se;
end;

function ctrlCidades.excluir(pObj: TObject): string;
begin

end;

function ctrlCidades.getCtrlEstados: ctrlEstados;
begin
  Result:= aCtrlEstados;
end;

function ctrlCidades.getDS: TObject;
begin
  Result:= aDaoCidades.getDS;
end;

function ctrlCidades.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoCidades.pesquisar( AFilter, pChave );
end;

function ctrlCidades.salvar(pObj: TObject): string;
begin
  aDaoCidades.salvar( pObj );
end;

procedure ctrlCidades.setCtrlEstados(pCtrl: ctrlEstados);
begin
  aCtrlEstados:= pCtrl;
end;

procedure ctrlCidades.setDM(pDM: TObject);
begin
  inherited;
  aDaoCidades.setDM( pDM );
end;

end.
