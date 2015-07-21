Rails.application.routes.draw do
  resources :usuarios, :tarefas
  get '/', to: "home#index"
  get '/login', to: "home#login"
  get '/sair', to: "home#sair"
  post '/checarLogin', to: "home#checarLogin"
end
