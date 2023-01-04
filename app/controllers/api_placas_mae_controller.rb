class ApiPlacasMaeController < ApplicationController
    before_action :verifParams
    rescue_from ActionController::UnpermittedParameters, with: :renderParamError
    
    def getByProcessor
        @processador = Processador.find(params[:id].to_i)
        unless @processador.nil?
            @placasMae = PlacaMae.where('processador @> ?', "{#{@processador.marca}}")
        end

        render json: @placasMae, status: 200
    end

    private
    def verifParams
        params.permit(:id)     
    end

    def renderParamError
        render json: { "Parametro(s) não permitido(s)": params.to_unsafe_h.except(:controller, :action, :id).keys }, status: :unprocessable_entity 
    end
end
