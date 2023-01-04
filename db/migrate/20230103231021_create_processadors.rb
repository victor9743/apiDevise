class CreateProcessadors < ActiveRecord::Migration[6.1]
  def change
    create_table :processadors do |t|
      t.string :produto
      t.string :marca

      t.timestamps
    end
  end
end
