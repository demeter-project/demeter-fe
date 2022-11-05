Rails.application.routes.draw do

  # get 'welcome/index'
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :gardens, only: %i[show new create destroy]
  resources :plots, only: %i[new destroy]

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
