Rails.application.routes.draw do
  root to: 'static_views#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '*path', to: 'static_views#index'
end
