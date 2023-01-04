class ApiPedidosController < ApplicationController
    def getAll
        @pedidos = Pedido.all

        render json: @pedidos, status: 200
    end
    
end
