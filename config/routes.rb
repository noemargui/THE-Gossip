Rails.application.routes.draw do
  get 'https://the-one-and-only-gossip.herokuapp.com/welcome', to: 'static_pages#welcome'
  get 'https://the-one-and-only-gossip.herokuapp.com/welcome/:id', to: 'static_pages#welcome'
  get 'https://the-one-and-only-gossip.herokuapp.com/team', to: 'static_pages#team'
  get 'https://the-one-and-only-gossip.herokuapp.com/contact', to: 'static_pages#contact'
  get 'https://the-one-and-only-gossip.herokuapp.com/gossipdetails/:id', to: 'static_pages#gossipdetails'
  get 'https://the-one-and-only-gossip.herokuapp.com/authordetails/:id', to: 'static_pages#authordetails'
end