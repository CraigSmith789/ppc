Rails.application.routes.draw do
  resources :guests
  resources :invites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :parties do
    resources :guests
  end
  resources :categories
  # get '/parties', to: 'parties#index'
  # # get "/path", to: 'controller#method/action'
  # get '/parties/:id', to: 'parties#show', as: 'party'
  
end


