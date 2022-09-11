unit uConsulta_GruposProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroGruposProdutos, uFilterSearch, uCtrlGruposRoupas, uGruposRoupas;

type
  Tform_consulta_grupos_produtos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroGruposProdutos : Tform_cadastro_grupos_produtos;

    oGrupoRoupa : GruposRoupas;
    aCtrlGruposRoupas : ctrlGruposRoupas;
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
  form_consulta_grupos_produtos: Tform_consulta_grupos_produtos;

implementation

{$R *.dfm}

{ Tform_consulta_grupos_produtos }

procedure Tform_consulta_grupos_produtos.alterar;
var form : Tform_cadastro_grupos_produtos;
begin
  inherited;
  aCtrlGruposRoupas.carregar( oGrupoRoupa);
  oCadastroGruposProdutos.conhecaObj(aCtrlGruposRoupas, oGrupoRoupa);

  oCadastroGruposProdutos.Caption:= 'Alteração de Grupo de Roupa';

  oCadastroGruposProdutos.ShowModal;

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_grupos_produtos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oGrupoRoupa:= GruposRoupas( pObj );
  aCtrlGruposRoupas:= ctrlGruposRoupas( pCtrl );

  Self.DBGrid.DataSource:= TDataSource( aCtrlGruposRoupas.getDS );
end;

procedure Tform_consulta_grupos_produtos.excluir;
var mCaption: string;
begin
  inherited;
  aCtrlGruposRoupas.carregar(oGrupoRoupa);

  mCaption := oCadastroGruposProdutos.btn_botao_salvar.caption;
  oCadastroGruposProdutos.btn_botao_salvar.caption := 'Excluir';

  oCadastroGruposProdutos.conhecaObj( aCtrlGruposRoupas, oGrupoRoupa );

  oCadastroGruposProdutos.Caption:= 'Exclusão de Cargo';

  oCadastroGruposProdutos.bloqueiaEdt;

  oCadastroGruposProdutos.ShowModal;

  oCadastroGruposProdutos.btn_botao_salvar.caption := mCaption;

  oCadastroGruposProdutos.desbloqueiaEdt;
end;

procedure Tform_consulta_grupos_produtos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar; inherited;
end;

procedure Tform_consulta_grupos_produtos.novo;
var form : Tform_cadastro_grupos_produtos;
begin
  inherited;
  oCadastroGruposProdutos.conhecaObj(aCtrlGruposRoupas, oGrupoRoupa);
  oCadastroGruposProdutos.limpaEdt;

  oCadastroGruposProdutos.Caption:= 'Cadastro de Grupo de Roupa';

  oCadastroGruposProdutos.ShowModal;

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_grupos_produtos.pesquisar;
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
    aCtrlGruposRoupas.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_grupos_produtos.sair;
var mGrupoProduto : GruposRoupas;
begin
  if self.btn_botao_sair.Caption = 'Selecionar' then
  begin
    mGrupoProduto:= GruposRoupas.crieObj;
    aCtrlGruposRoupas.carregar( TObject( mGrupoProduto ) );
    oGrupoRoupa.setCodigo( mGrupoProduto.getCodigo );
    oGrupoRoupa.setGrupoRoupa( mGrupoProduto.getGrupoRoupa);

    inherited sair;
  end
  else
    inherited Sair;

end;

procedure Tform_consulta_grupos_produtos.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_grupos_produtos;
begin
  inherited;
  oCadastroGruposProdutos := Tform_cadastro_grupos_produtos( pObj );

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_grupos_produtos.spb_botao_pesquisarClick(
  Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_grupos_produtos.tipoFiltro;
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
    1:  //grupo roupa
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR GRUPO DE ROUPA!';
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
