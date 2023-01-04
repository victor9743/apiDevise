namespace :popula_placas_video do
    desc "Popular a tabela placasVideo..."
    task import: :environment do
        PlacaVideo.create!(
            Produto:                "Evga Geforce RTX 2060 6GB"
        )

        PlacaVideo.create!(
            Produto:                "Asus ROG Strix Geforce RTX 3060 6GB"
        )

        PlacaVideo.create!(
            Produto:                "Gigabyte Radeon RX 6600 XT EAGLE 8GB"
        )
    end
end
