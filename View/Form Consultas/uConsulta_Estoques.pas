unit uConsulta_Estoques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tform_consulta_estoques = class(Tform_consulta_pai)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_consulta_estoques: Tform_consulta_estoques;

implementation

{$R *.dfm}

end.
