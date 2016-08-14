Rails.application.routes.draw do
  resources :spreadsheets
  resources :customers
  devise_for :admins
  resources :outreaches

  root 'outreaches#new'
end
