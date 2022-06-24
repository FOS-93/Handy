Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :handymen, only: [:new, :create]
  end

  get "/my_profile", to: "pages#my_profile", as: :my_profile

end
