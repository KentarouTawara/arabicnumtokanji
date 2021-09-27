Rails.application.routes.draw do
  get 'comments/create'

  root 'conversions#new'
  resources :conversions
end
