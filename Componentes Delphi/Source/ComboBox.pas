unit ComboBox;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Graphics;

type
  TComboBox1 = class(TComboBox)
  private
    FMudarCor: TColor;
    procedure SetMudarCor(const Value: TColor);
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
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Priscyla', [TComboBox1]);
end;

{ TComboBox }

constructor TComboBox1.create(AOwner: TComponent);
begin
  inherited Create ( AOwner );
  FMudarCor:= clCream;
end;

procedure TComboBox1.DoEnter;
begin
  inherited;
  Color:= FMudarCor;
end;

procedure TComboBox1.DoExit;
begin
  inherited;
  Color:= clWindow;
end;

procedure TComboBox1.SetMudarCor(const Value: TColor);
begin
  FMudarCor := Value;
end;

end.
