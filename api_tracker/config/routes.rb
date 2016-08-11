Rails.application.routes.draw do
  resources :tracker

  root 'tracker#index'
end
