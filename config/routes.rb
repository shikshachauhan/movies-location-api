Rails.application.routes.draw do
  resources :movies, only: :index
  root to: redirect('movies#index')
end
