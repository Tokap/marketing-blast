Rails.application.routes.draw do
  resources :spreadsheets, except: [:new, :show]
  resources :customers, except: [:new, :show]
  resources :outreaches, except: [:new]

  devise_for :admins
  
  post 'notifications/notify' => 'notifications#notify'
  post 'notifications/blast' => 'notifications#blast'

  get "/information" => "static#information"
  get "/manage" => "static#manage"

  root 'static#main'
end
