Rails.application.routes.draw do
  resources :polls, only: [:new,:create,:show,:update]
  root 'polls#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
