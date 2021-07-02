Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  
  mount WcmcComponents::Engine, at: "/tools", as: 'tools_table'

  # post '/tools/list', to: 'home#list'
end
