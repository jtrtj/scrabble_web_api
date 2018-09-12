Rails.application.routes.draw do
  root "welcome#index"
  get '/validation', to: 'validations#show'

  namespace :api do
    namespace :v1 do
      resources :games, only: [:show]
    end
  end
end
