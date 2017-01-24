Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :logins, only: [:new, :create]

  match 'login' => 'logins#destroy', via: 'delete', as: 'logout'
end
