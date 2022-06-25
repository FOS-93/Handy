Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :handymen, only: %i[new create]
  end

  resources :handymen, except: %i[new create] do
    resources :skills, only: %i[new create]
  end

  get "/my_profile", to: "pages#my_profile", as: :my_profile

end
