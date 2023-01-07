Rails.application.routes.draw do
  
  get '/pedidos', to: 'api_pedidos#getAll'

  get '/processadores', to: 'api_processadores#getAll'

  get '/placasMae', to: 'api_placas_mae#getByProcessor'

  get '/memorias', to: 'api_memorias_ram#getAll'

  get '/placasVideo', to: 'api_placas_video#getAll'

  post '/salvarPedido', to: 'api_pedidos#savePedido'

  get '/detalhesPedido', to: 'api_pedidos#getPedido'
end
