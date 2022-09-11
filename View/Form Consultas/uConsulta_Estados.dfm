inherited form_consulta_estados: Tform_consulta_estados
  Caption = 'Consulta de Estados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    inherited pnl_topo: TPanel
      inherited pnl_dentro_topo: TPanel
        inherited combobox_tipo_filtro: TComboBox1
          ItemIndex = 2
          Items.Strings = (
            'C'#211'DIGO'
            'ESTADO'
            'TODOS')
        end
      end
    end
  end
end
