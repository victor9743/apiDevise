namespace :popula_processadores do
    desc "Popular a tabela processadores..."
    task import: :environment do
        Processador.create!(
            produto:                "Core i5",
            marca:                  "Intel",
        )

        Processador.create!(
            produto:                "Core i7",
            marca:                  "Intel",
        )

        Processador.create!(
            produto:                "Ryzen 5",
            marca:                  "AMD",
        )

        Processador.create!(
            produto:                "Ryzen 7",
            marca:                  "AMD",
        )
    end
end
