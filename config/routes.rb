Rails.application.routes.draw do
  get 'go_fetch/start_yellow_pages_australia'
  resources :yellow_pages

  root to: 'static#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
