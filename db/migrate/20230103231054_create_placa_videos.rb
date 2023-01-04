class CreatePlacaVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :placa_videos do |t|
      t.string :Produto

      t.timestamps
    end
  end
end
