inherited form_consulta_formas_pagamentos: Tform_consulta_formas_pagamentos
  Caption = 'Consulta de Formas de Pagamentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    inherited pnl_topo: TPanel
      inherited pnl_dentro_topo: TPanel
        inherited combobox_tipo_filtro: TComboBox1
          Left = 32
          Width = 169
          ItemIndex = 2
          Items.Strings = (
            'C'#211'DIGO'
            'FORMA DE PAGAMENTO'
            'TODOS')
          ExplicitLeft = 32
          ExplicitWidth = 169
        end
      end
    end
  end
end
