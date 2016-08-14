Rails.application.routes.draw do
  resources :customers
  devise_for :admins
  resources :outreaches

  root 'outreaches#new'
end
