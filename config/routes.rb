Rails.application.routes.draw do
  resources :spreadsheets
  resources :customers
  devise_for :admins
  resources :outreaches
  post 'notifications/notify' => 'notifications#notify'

  root 'outreaches#new'
end
