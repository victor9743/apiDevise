namespace :popula_placas_mae do
    desc "Popular a tabela placamaes..."
    task import: :environment do
        PlacaMae.create!(
            produto:                "Asus ROG",
            processador:            ["intel"],
            qtdSlots:               2,
            totalMemoria:           16,
            videoIntegrado:         false
        )

        PlacaMae.create!(
            produto:                "Gigabyte Aorus",
            processador:            ["AMD"],
            qtdSlots:               2,
            totalMemoria:           16,
            videoIntegrado:         false
        )

        PlacaMae.create!(
            produto:                "ASRock Steel Legend",
            processador:            ["intel", "AMD"],
            qtdSlots:               4,
            totalMemoria:           64,
            videoIntegrado:         true
        )
    end
end
