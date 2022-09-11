unit uConsulta_Marcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroMarcas,
  uCtrlMarcas,
  uMarcas,
  uFilterSearch;

type
  Tform_consulta_marcas = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroMarcas : Tform_cadastro_marcas;

    aMarca : Marcas;
    aCtrlMarca : ctrlMarcas;
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
  form_consulta_marcas: Tform_consulta_marcas;

implementation

{$R *.dfm}

{ Tform_consulta_marcas }

procedure Tform_consulta_marcas.alterar;
begin
  inherited;
  aCtrlMarca.carregar( aMarca );
  oCadastroMarcas.conhecaObj( aCtrlMarca, aMarca );

  oCadastroMarcas.Caption:= 'Alteração de Marca';

  oCadastroMarcas.ShowModal;
end;

procedure Tform_consulta_marcas.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aMarca:= Marcas( pObj );
  aCtrlMarca:= ctrlMarcas( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlMarca.getDS );
end;

procedure Tform_consulta_marcas.excluir;
begin
  inherited;

end;

procedure Tform_consulta_marcas.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar; inherited;
end;

procedure Tform_consulta_marcas.novo;
var form : Tform_cadastro_marcas;
begin
  inherited;
  oCadastroMarcas.conhecaObj( aCtrlMarca, aMarca );
  oCadastroMarcas.limpaEdt;

  oCadastroMarcas.Caption:= 'Cadastro de Marca';

  oCadastroMarcas.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_marcas.pesquisar;
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
    aCtrlMarca.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_marcas.sair;
var mMarca : Marcas;
begin
  if btn_botao_sair.Caption = 'Selecionar' then
  begin
    mMarca:= Marcas.crieObj;
    aCtrlMarca.carregar( TObject ( mMarca ) );
    aMarca.setCodigo( mMarca.getCodigo );
    aMarca.setMarca( mMarca.getMarca );

    inherited sair;
  end
  else
    inherited sair;

end;

procedure Tform_consulta_marcas.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_marcas;
begin
  inherited;
  oCadastroMarcas := Tform_cadastro_marcas( pObj );

  if form.salvou then
     self.pesquisar; inherited
end;

procedure Tform_consulta_marcas.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_marcas.tipoFiltro;
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
    1:  //marca
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR MARCA!';
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
