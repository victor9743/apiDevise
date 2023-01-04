namespace :popula_memorias_ram do
    desc "Popular a tabela memoriasRam..."
    task import: :environment do
        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                4
        )

        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                8
        )

        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                16
        )

        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                32
        )

        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                64
        )
    end
end
