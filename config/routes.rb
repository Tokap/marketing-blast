Rails.application.routes.draw do
  resources :spreadsheets, except: [:new, :show, :edit, :index]
  resources :customers, except: [:new, :show, :index]
  resources :outreaches, except: [:new, :index]

  devise_for :admins
  
  post 'notifications/notify' => 'notifications#notify'
  post 'notifications/blast' => 'notifications#blast'

  get "/review" => "static#review"
  get "/manage" => "static#manage"

  root 'static#main'
end
