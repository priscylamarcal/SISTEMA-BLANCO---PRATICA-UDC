unit uTamanhos;

interface

uses uPai;

type Tamanhos = class(Pai)
  private
  protected
    siglaTamanho : string[3];
    largura      : string[4];
    altura       : string[4];
    comprimento  : string[4];
  public
    constructor crieObj;
    destructor destrua_se;

    procedure setSiglaTamanho ( pSiglaTamanho : string );
    procedure setLargura ( pLargura : string );
    procedure setAltura ( pAltura : string );
    procedure setComprimento ( pComprimento : string );

    function getSiglaTamanho : string;
    function getLargura : string;
    function getAltura : string;
    function getComprimento : string;
    function clone : Tamanhos;
end;

implementation

{ Tamanhos }

constructor Tamanhos.crieObj;
begin
  inherited;
  siglaTamanho:= '';
  largura:= '';
  altura:= '';
  comprimento:= '';
end;

destructor Tamanhos.destrua_se;
begin

end;

function Tamanhos.getAltura: string;
begin
  Result:= altura;
end;

function Tamanhos.getComprimento: string;
begin
  Result:= comprimento;
end;

function Tamanhos.getLargura: string;
begin
  Result:= largura;
end;

function Tamanhos.getSiglaTamanho: string;
begin
  Result:= siglaTamanho;
end;

procedure Tamanhos.setAltura(pAltura: string);
begin
  altura:= pAltura;
end;

procedure Tamanhos.setComprimento(pComprimento: string);
begin
  comprimento:= pComprimento;
end;

procedure Tamanhos.setLargura(pLargura: string);
begin
  largura:= pLargura;
end;

procedure Tamanhos.setSiglaTamanho(pSiglaTamanho: string);
begin
  siglaTamanho:= pSiglaTamanho;
end;

function Tamanhos.clone: Tamanhos;
begin
  Result:= Tamanhos.crieObj;
  Result.setSiglaTamanho( siglaTamanho );
  Result.setLargura( largura );
  Result.setAltura( altura );
  Result.setComprimento( comprimento );
  Result.setCodigo( codigo );
  Result.setDataCad( dataCad );
  Result.setUltAlt( ultAlt );
  Result.setCodUsu( codUsu );
end;

end.
