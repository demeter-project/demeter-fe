Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :plants, only: %i[show]
  
  resources :gardens, only: %i[show new create destroy] do
    resources :plots, only: %i[new show create destroy] do
      get 'plants/discover', to: 'plants#index'
    end
  end

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
