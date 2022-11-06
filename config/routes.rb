Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :plants, only: %i[show]

  resources :gardens, only: %i[show new create destroy] do
    resources :plots, only: %i[show new create]
  end

  resources :plots, only: %i[destroy]

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
