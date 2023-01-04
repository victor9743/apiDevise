namespace :popula_memorias_ram do
    desc "Popular a tabela memoriasRam..."
    task import: :environment do
        MemoriaRam.create!(
            produto:                "Kingston Hiper X",
            tamanho:                [4, 8, 16, 32, 64]
        )
    end
end
