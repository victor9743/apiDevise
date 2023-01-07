class ApiPedidosController < ApplicationController
    def getAll
        @pedidos = Pedido.all

        render json: @pedidos, status: 200
    end

    def savePedido
        @erros = []

        @processador = Processador.find(params[:processador])
        if @processador.nil?
            @erros.push("Processador inexistente")
        end

        @placaMae = PlacaMae.find(params[:placasMae])
        if @placaMae.nil?
            @erros.push("Placa mãe inexistente")
        end

        @memorias = []
        params[:memorias].each do |memoria| 
            @checkMemory = MemoriaRam.where('tamanho @> ?', "{#{memoria}}")

            if @checkMemory.count > 0 
                @memorias.push({memoria: "#{@checkMemory[0].produto} - #{memoria} GB" })
            else
                @erros.push("Tamanho de memoria #{memoria} inexistente(s)")
            end
        end
        puts @memorias
        @placaVideo = PlacaVideo.find(params[:placaVideo])
        if @placaVideo.nil?
            @erros.push("Placa de video inexistente")
        end

        if params[:cliente] == ""
            @erros.push("Favor, preencher o nome do cliente")
        end

        if @erros.empty?
            Pedido.create(
                cliente: params[:cliente],
                processador: @processador.id,
                placaMae: @placaMae.id,
                memoria: @memorias,
                placaVideo: @placaVideo.id
            )
            render json: ["Pedido salvo com sucesso"], status: 200
        else
            render json: @erros, status: :unprocessable_entity
        end
    end    
end
