Rails.application.routes.draw do
  devise_for :admins
  resources :outreaches

  root 'outreaches#new'
end
