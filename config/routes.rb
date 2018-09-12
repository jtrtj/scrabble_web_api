Rails.application.routes.draw do
  root "welcome#index"
  get '/validation', to: 'validations#show'
end
