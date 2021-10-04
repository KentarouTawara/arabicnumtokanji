Rails.application.routes.draw do
  root 'conversions#new'
  resources :conversions do
    resources :comments, shallow: true
  end
end
