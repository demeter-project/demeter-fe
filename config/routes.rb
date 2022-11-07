Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :gardens, only: %i[show new create destroy] do
    resources :plots, only: %i[show new create destroy] do
      resources :plot_plants, only: %i[index create destroy update], as: :plants
    end
  end
  
  resources :plants, only: %i[show]

  get '/gardens/:garden_id/plots/:plot_id/plants/discover', to: 'plants#index', as: :discover_plants
  
  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
