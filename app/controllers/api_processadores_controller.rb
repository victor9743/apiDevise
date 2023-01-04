class ApiProcessadoresController < ApplicationController

    def getAll
        @processadores = Processador.all
        render json: @processadores, status: 200
    end
    
end
