Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  
  get '/about', to: 'pages#about', as: :about
  get '/terms-conditions', to: 'pages#terms', as: :termsAndConditions
  get '/glossary', to: 'pages#glossary', as: :glossary

  mount WcmcComponents::Engine, at: "/tools", as: 'tools_table'

  # post '/tools/list', to: 'home#list'
end
