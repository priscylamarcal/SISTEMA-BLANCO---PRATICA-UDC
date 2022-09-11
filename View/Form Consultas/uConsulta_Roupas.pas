unit uConsulta_Roupas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroProdutos, uRoupas, uCtrlRoupas, uFilterSearch;

type
  Tform_consulta_roupas = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroProdutos : Tform_cadastro_produtos;

    aRoupa : Roupas;
    aCtrlRoupas : ctrlRoupas;
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
  form_consulta_roupas: Tform_consulta_roupas;

implementation

{$R *.dfm}

{ Tform_consulta_roupas }

procedure Tform_consulta_roupas.alterar;
var form : Tform_cadastro_produtos;
begin
  inherited;

  oCadastroProdutos.limpaEdt;
  aCtrlRoupas.carregar( aRoupa );
  oCadastroProdutos.conhecaObj( aCtrlRoupas, aRoupa );

  oCadastroProdutos.Caption:= 'Alteração de Roupa';

  oCadastroProdutos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;

end;

procedure Tform_consulta_roupas.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aRoupa:= Roupas( pObj );
  aCtrlRoupas:= ctrlRoupas( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlRoupas.getDS );
end;

procedure Tform_consulta_roupas.excluir;
var mCaption: string;
begin
  inherited;
  aCtrlRoupas.carregar(aRoupa);

  mCaption := oCadastroProdutos.btn_botao_salvar.caption;
  oCadastroProdutos.btn_botao_salvar.caption := 'Excluir';

  oCadastroProdutos.conhecaObj( aCtrlRoupas, aRoupa );

  oCadastroProdutos.Caption:= 'Exclusão de Cargo';

  oCadastroProdutos.bloqueiaEdt;

  oCadastroProdutos.bloqueaiaBtnPesquisa;

  oCadastroProdutos.ShowModal;

  oCadastroProdutos.btn_botao_salvar.caption := mCaption;

  oCadastroProdutos.desbloqueiaEdt;

  oCadastroProdutos.desbloqueiaBtnPesquisa;
end;

procedure Tform_consulta_roupas.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_roupas.novo;
var form : Tform_cadastro_produtos;
begin
  inherited;
  oCadastroProdutos.conhecaObj( aCtrlRoupas, aRoupa );
  oCadastroProdutos.limpaEdt;

  oCadastroProdutos.Caption:= 'Cadastro de Roupa';

  oCadastroProdutos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_roupas.pesquisar;
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
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
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
    aCtrlRoupas.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;


procedure Tform_consulta_roupas.sair;
begin
  inherited;

end;

procedure Tform_consulta_roupas.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_produtos;
begin
  inherited;
  oCadastroProdutos := Tform_cadastro_produtos( pObj );

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_roupas.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_roupas.tipoFiltro;
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
    1:  //roupa
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR ROUPA!';
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
