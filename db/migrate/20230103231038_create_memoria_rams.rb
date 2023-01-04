class CreateMemoriaRams < ActiveRecord::Migration[6.1]
  def change
    create_table :memoria_rams do |t|
      t.string :produto
      t.text :tamanho, array: true, default: []

      t.timestamps
    end
  end
end
