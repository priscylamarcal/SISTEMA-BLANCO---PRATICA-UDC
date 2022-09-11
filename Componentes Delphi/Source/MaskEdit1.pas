unit MaskEdit1;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Graphics;

type
  TTipoMascara = ( tmData, tmCPF, tmCNPJ, tmCEP, tmTelefone, tmCelular );
  PriTMaskEdit = class(TMaskEdit)
  private
    FMudarCor: TColor;
    FTipoMascara: TTipoMascara;
    procedure SetMudarCor(const Value: TColor);
    procedure SetTipoMascara(const Value: TTipoMascara);
    { Private declarations }
  protected
    { Protected declarations }
    procedure DoEnter; override;
    procedure DoExit;  override;
  public
    { Public declarations }
    constructor create ( AOwner : TComponent ); override;
  published
    { Published declarations }
    property MudarCor : TColor read FMudarCor write SetMudarCor;
    property TipoMascara : TTipoMascara read FTipoMascara write SetTipoMascara;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('priscyla', [PriTMaskEdit]);
end;

{ PriTMaskEdit }

constructor PriTMaskEdit.create(AOwner: TComponent);
begin
  inherited Create ( AOwner );
  FMudarCor:= clCream;
end;

procedure PriTMaskEdit.DoEnter;
begin
  inherited;
  Color:= FMudarCor;
end;

procedure PriTMaskEdit.DoExit;
begin
  inherited;
  Color:= clWindow;
end;

procedure PriTMaskEdit.SetMudarCor(const Value: TColor);
begin
  FMudarCor := Value;
end;

procedure PriTMaskEdit.SetTipoMascara(const Value: TTipoMascara);
begin
  FTipoMascara := Value;

  case value of
    tmData:
       EditMask:= '99/99/9999;1;_';

    tmCPF:
       EditMask:= '999.999.999-99;1;_';

    tmCNPJ:
       EditMask:= '99.999.999/9999-99;1;_';

    tmCEP:
       EditMask:= '99.999-999;1;_';

    tmTelefone:
       EditMask:= '(99) 9999-9999;1;_';

    tmCelular:
       EditMask:= '(99) 9 9999-9999;1;_';
  end;
end;

end.
