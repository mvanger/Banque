Banque::Application.routes.draw do
  root :to => 'banks#index'

  post '/deposit' => 'banks#deposit', as: 'deposit'
  post '/add_account' => 'banks#add_account', as: 'add_account'
  get '/accounts' => 'banks#accounts'
end
