Rails.application.routes.draw do
  resources :trackers do
    resources :checkers
  end
  
  root 'trackers#index'
end
