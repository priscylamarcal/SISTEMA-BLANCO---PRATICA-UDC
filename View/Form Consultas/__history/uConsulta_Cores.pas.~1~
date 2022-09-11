unit uConsultaCores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroCores,
  uCores,
  uCtrlCores,
  uFilterSearch;

type
  Tform_consulta_cores = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroCores : Tform_cadastro_cores;

    aCor : Cores;
    aCtrlCor : ctrlCores;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_cores: Tform_consulta_cores;

implementation

{$R *.dfm}

{ Tform_consulta_cores }

procedure Tform_consulta_cores.alterar;
begin
  inherited;

  aCtrlCor.carregar( aCor );
  oCadastroCores.conhecaObj( aCtrlCor, aCor );

  oCadastroCores.Caption:= 'Alteração de Cor';

  oCadastroCores.ShowModal;

end;

procedure Tform_consulta_cores.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aCor:= Cores( pObj );
  aCtrlCor:= ctrlCores( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlCor.getDS );
end;

procedure Tform_consulta_cores.excluir;
begin
  inherited;

end;

procedure Tform_consulta_cores.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar; inherited;
end;

procedure Tform_consulta_cores.novo;
var form : Tform_cadastro_cores;
begin
  inherited;

  oCadastroCores.conhecaObj( aCtrlCor, aCor );
  oCadastroCores.limpaEdt;

  oCadastroCores.Caption:= 'Cadastro de Cor';

  oCadastroCores.ShowModal;

  if form.salvou then
     self.pesquisar; inherited;

end;

procedure Tform_consulta_cores.pesquisar;
var vFilter : TFilterSearch;
    pchave : string;
begin
  //inherited;
  VFilter   := TFilterSearch.Create;

  try
    Try
     case combobox_tipo_filtro.ItemIndex of
      0:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
           Exit;
          end;

          vFilter.TipoConsulta:= TpCCodigo;
          vFilter.Codigo:= StrToInt(edt_pesquisa.Text);
        end;
    1:
        begin
          if Length( edt_pesquisa.Text ) < 3 then
          begin
            MessageDlg( 'Digite ao menos 3 caracteres para consulta!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCParam;
          VFilter.Parametro    := Uppercase( edt_pesquisa.Text );
        end;
      2:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlCor.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_cores.sair;
var form : Tform_cadastro_cores;
begin
  inherited;
  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_cores.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_cores;
begin
  inherited;
  oCadastroCores := Tform_cadastro_cores( pObj );

  if form.salvou then
     self.pesquisar; inherited;

end;

procedure Tform_consulta_cores.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_cores.tipoFiltro;
begin
  inherited;
  case combobox_tipo_filtro.ItemIndex of
    0:  //código
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CÓDIGO!';
        edt_pesquisa.NumbersOnly:= true;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    1:  //cor
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR COR!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
