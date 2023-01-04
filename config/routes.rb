Rails.application.routes.draw do
  
  get '/pedidos', to: 'api_pedidos#getAll'

  get '/processadores', to: 'api_processadores#getAll'
end
