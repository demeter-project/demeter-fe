Rails.application.routes.draw do

  # get 'welcome/index'
  get '/', to: 'welcome#index', as: :landing_page

  resources :users, only: %i[show]

  resources :gardens, only: %i[show new create destroy]

  resources :sessions, only: %i[logout]

  resources :plots, only: %i[show new create destroy]

  resources :plants, only: %i[show new create destroy]

  get '/auth/:provider/callback', to: 'sessions#omniauth', as: :omniauth
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
