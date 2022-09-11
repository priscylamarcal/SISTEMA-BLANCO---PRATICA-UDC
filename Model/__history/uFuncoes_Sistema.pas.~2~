unit uFuncoes_Sistema;

interface

uses
  Vcl.ExtCtrls, Winapi.Windows, Vcl.Buttons, Vcl.Graphics, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;


    procedure prc_ocultar_tabs ( PageControl : TPageControl );
    procedure prcAjustarColunasGrid(const xDBGrid: TDBGrid);
    procedure prcAjustaTamanhoLinha (dbg: TDBGrid);


type TDBGridPadrao = class(TCustomGrid);

var var_gbl_modulo : string;

implementation

{ funcoes }


procedure prcAjustarColunasGrid(const xDBGrid: TDBGrid);
var
  I, TotalWidht, VarWidth, QtdTotalColuna : Integer;
  xColumn : TColumn;
begin
  ShowScrollBar( xDBGrid.Handle,SB_Vert, True );

  For I := 0 to xDBGrid.FieldCount - 1 do
  begin

    {if ( xDBGrid.Fields[I].FieldName = 'ds_razaosocial' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_fantasia' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_endereco')or
       ( xDBGrid.Fields[I].FieldName = 'ds_bairro' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_municipio' ) or
       ( xDBGrid.Fields[I].FieldName = 'ds_descricao' ) then}
      xDBGrid.Fields[I].Tag := 15;
    {else
      xDBGrid.Fields[I].Tag := 0;  }

  end;

  // Largura total de todas as colunas antes de redimensionar
  TotalWidht := 0;

  // Quantas colunas devem ser auto-redimensionamento
  QtdTotalColuna := 0;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    TotalWidht := TotalWidht + xDBGrid.Columns[I].Width;

    if xDBGrid.Columns[I].Field.Tag <> 0 then
      Inc(QtdTotalColuna);
  end;

  // Adiciona 1px para a linha de separador de coluna
  if dgColLines in xDBGrid.Options then
    TotalWidht := TotalWidht + xDBGrid.Columns.Count;

  // width vale "Left"
  VarWidth :=  xDBGrid.ClientWidth - TotalWidht;

  // Da mesma forma distribuir VarWidth para todas as colunas auto-resizable
  if QtdTotalColuna > 0 then
    VarWidth := varWidth div QtdTotalColuna;

  for I := 0 to -1 + xDBGrid.Columns.Count do
  begin
    xColumn := xDBGrid.Columns[I];

    if xColumn.Field.Tag <> 0 then
    begin
      xColumn.Width := xColumn.Width + VarWidth;

      if xColumn.Width < xColumn.Field.Tag then
        xColumn.Width := xColumn.Field.Tag;
    end;
  end;
end;

procedure prcAjustaTamanhoLinha(dbg: TDBGrid);
begin
  //Define o tamanho de cada linha do dbgrid apos ativar a query
  TDBGridPadrao(dbg).DefaultRowHeight := 32;
  TDBGridPadrao(dbg).ClientHeight     := ( 33  * TDBGridPadrao(dbg).RowCount ) + 33 ;

  TDBGridPadrao(dbg).RowHeights[0] := 30;
end;

procedure prc_ocultar_tabs(PageControl: TPageControl);
var
  page :Integer;

begin
  // funcao percorre o pagecontrol passado por parametro escondendo todas as abas
  for page := 0 to PageControl.PageCount - 1 do
    PageControl.Pages[page].tabvisible := False;

  PageControl.ActivePageIndex := 0;

end;

end.
