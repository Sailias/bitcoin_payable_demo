Rails.application.routes.draw do
  root to: 'donations#new'

  resources :donations, only: [:new, :create, :show]
end
