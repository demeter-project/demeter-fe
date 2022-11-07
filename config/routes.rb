Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :gardens, only: %i[show new create destroy] do
    resources :plots, only: %i[show new create destroy] do
      resources :plot_plants, only: %i[index create destroy], as: :plants
    end
  end
  
  resources :plants, only: %i[show]

  get '/gardens/:garden_id/plots/:plot_id/plants/discover', to: 'plants#index', as: :discover_plants
  
  # post '/gardens/:garden_id/plots/:plot_id/plot_plants', to: 'plot_plants#create', as: :plot_plants
  # get '/gardens/:garden_id/plots/:plot_id/plot_plants', to: 'plot_plants#index', as: :plot_plants_index


  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
