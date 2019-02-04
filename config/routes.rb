Rails.application.routes.draw do
  get '/static_pages/welcome/:id', to: 'static_pages#welcome'
  get '/static_pages/team', to: 'static_pages#team'
  get '/static_pages/contact', to: 'static_pages#contact'
end
