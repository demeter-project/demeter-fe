Rails.application.routes.draw do

  # get 'welcome/index'
  get '/', to: 'welcome#index', as: :landing_page

  resources :users, only: %i[show]

  resources :gardens, only: %i[show new create destroy]

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
