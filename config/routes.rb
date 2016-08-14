Rails.application.routes.draw do
  resources :spreadsheets
  resources :customers
  devise_for :admins
  resources :outreaches
  post 'notifications/notify' => 'notifications#notify'
  post 'notifications/blast' => 'notifications#blast'

  root 'outreaches#new'
end
