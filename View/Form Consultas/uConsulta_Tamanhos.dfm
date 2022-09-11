inherited form_consulta_tamanhos: Tform_consulta_tamanhos
  Caption = 'Consulta de Tamanhos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    inherited pnl_topo: TPanel
      inherited pnl_dentro_topo: TPanel
        inherited combobox_tipo_filtro: TComboBox1
          ItemIndex = 2
          Items.Strings = (
            'C'#211'DIGO'
            'SIGLA'
            'TODOS')
        end
      end
    end
  end
end
