Rails.application.routes.draw do
  devise_for :users, controllers: {
  registrations: 'users/registrations',
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  confirmations: 'users/confirmations'
}


  # Routes pour les utilisateurs (visiteurs et locataires/propriétaires)
  # devise_for :users, controllers: { registrations: 'users/registrations' }


  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :stars, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end

  resources :reservations, only: [] do
    member do
      patch :custom_accept
      patch :custom_reject
    end
  end
  get '/dashboard', to: 'dashboard#custom_dashboard', as: :dashboard


  # Routes pour les favoris
  # resources :favorites, only: [:index, :create, :destroy]

  # Page de contacts, merci, etc.
  # get '/contact', to: 'pages#contact', as: :contact
  # get '/thanks', to: 'pages#thanks', as: :thanks

end
