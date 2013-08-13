Banque::Application.routes.draw do
  root :to => 'banks#index'

  post '/deposit' => 'banks#deposit', as: 'deposit'
  get '/accounts' => 'banks#accounts'
end
