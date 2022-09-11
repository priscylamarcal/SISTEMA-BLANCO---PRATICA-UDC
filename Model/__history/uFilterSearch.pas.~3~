unit uFilterSearch;

interface

type
  TTipoConsulta = ( TpCIndefinido = -1, TpCCodigo = 0, TpCParam = 1, TpCTODOS = 2, TpCCPF_CNPJ = 3, TpCDDI = 4, TpCMoeda = 5 );

  TFilterSearch = class
  private
    FCodigo: Integer;
    FParametro: string;
    FTipoConsulta: TTipoConsulta;
    FRecuperarObj: Boolean;
    FDDI: string;
    FMoeda: string;
    procedure SetCodigo( const Value: Integer );
    procedure SetParametro( const Value: string );
    procedure SetTipoConsulta( const Value: TTipoConsulta );
    procedure SetRecuperarObj( const Value: Boolean );

    procedure SetDDI(const Value: string);
    procedure SetMoeda(const Value: string); public
    constructor Create;
    destructor Destroy;
    procedure Free;
    property TipoConsulta: TTipoConsulta read FTipoConsulta write SetTipoConsulta;
    property Codigo: Integer read FCodigo write SetCodigo;
    property Parametro: string read FParametro write SetParametro;
    property RecuperarObj: Boolean read FRecuperarObj write SetRecuperarObj;
    property DDI: string read FDDI write SetDDI;
    property Moeda : string read FMoeda write SetMoeda;
  end;

implementation

{ TFilterSearch }

constructor TFilterSearch.Create;
begin
  FCodigo       := 0;
  FParametro    := '';
  FDDI          := '';
  FMoeda        := '';
  FRecuperarObj := False;
  FTipoConsulta := TpCIndefinido;
end;

destructor TFilterSearch.Destroy;
begin

end;

procedure TFilterSearch.Free;
begin
  if Assigned( Self ) then
    Self.Destroy;
end;

procedure TFilterSearch.SetCodigo( const Value: Integer );
begin
  FCodigo := Value;
end;

procedure TFilterSearch.SetDDI(const Value: string);
begin
  FDDI := Value;
end;

procedure TFilterSearch.SetMoeda(const Value: string);
begin
  FMoeda := Value;
end;

procedure TFilterSearch.SetParametro( const Value: string );
begin
  FParametro := Value;
end;

procedure TFilterSearch.SetRecuperarObj( const Value: Boolean );
begin
  FRecuperarObj := Value;
end;

procedure TFilterSearch.SetTipoConsulta( const Value: TTipoConsulta );
begin
  FTipoConsulta := Value;
end;

end.
