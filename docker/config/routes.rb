Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/inteligencia_global_ai'
  get 'welcome/sectorial_ai'
  get 'welcome/iot_sectorial'
  get 'welcome/inteligencia_global_iot'
  get 'welcome/bc_sectorial'
  get 'welcome/inteligencia_global_blockchain'


  resources :cities
  resources :companies

    namespace :charts do
      get "company_all"



    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
