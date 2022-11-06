Rails.application.routes.draw do

  # get 'welcome/index'
  get '/', to: 'welcome#index', as: :landing_page

  get '/dashboard', to: 'users#show'

  resources :gardens, only: %i[show new create destroy] do
    resources :plots, only: %i[new destroy]
  end

  get '/gardens/:garden_id/plots/:plot_id/plants/discover', to: 'plants#index'
  
  post '/gardens/:garden_id/plots/:plot_id/plot_plants', to: 'plot_plants#create', as: :plot_plants

  get '/auth/:provider/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
