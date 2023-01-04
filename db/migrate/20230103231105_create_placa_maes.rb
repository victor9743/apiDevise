class CreatePlacaMaes < ActiveRecord::Migration[6.1]
  def change
    create_table :placa_maes do |t|
      t.string :produto
      t.text :processador, array: true, default: []
      t.integer :qtdSlots
      t.integer :totalMemoria
      t.boolean :videoIntegrado

      t.timestamps
    end
  end
end
