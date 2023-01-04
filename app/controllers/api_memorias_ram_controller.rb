class ApiMemoriasRamController < ApplicationController
    def getAll
        @memorias = MemoriaRam.all
        
        render json: @memorias, status: 200
    end
end
