class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.string :cliente
      t.integer :processador
      t.integer :placaMae
      t.text :memoria, array: true, default: []
      t.integer :placaVideo

      t.timestamps
    end
  end
end
