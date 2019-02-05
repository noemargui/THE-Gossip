Rails.application.routes.draw do
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/welcome', to: 'static_pages#welcome'
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/welcome/:id', to: 'static_pages#welcome'
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/team', to: 'static_pages#team'
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/contact', to: 'static_pages#contact'
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/gossipdetails/:id', to: 'static_pages#gossipdetails'
  get 'https://the-one-and-only-gossip.herokuapp.com/static_pages/authordetails/:id', to: 'static_pages#authordetails'
end