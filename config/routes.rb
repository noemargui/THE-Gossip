Rails.application.routes.draw do
  get '/welcome', to: 'static_pages#welcome'
  get '/welcome/:id', to: 'static_pages#welcome'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/gossipdetails/:id', to: 'static_pages#gossipdetails'
  get '/authordetails/:id', to: 'static_pages#authordetails'
  resources :gossips, only: [:new, :create]
  get '/new', to: 'gossips#new'
end