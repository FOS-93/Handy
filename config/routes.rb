Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :handymen do
    resources :skills, only: %i[new create]
    resources :appointments, only: %i[new create]
  end


  get "/my_profile", to: "pages#my_profile", as: :my_profile

end
