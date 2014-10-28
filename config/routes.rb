Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  match '/help',    to: 'home#help',    via: 'get'
  match '/about',   to: 'home#about',   via: 'get'
  match '/contact', to: 'home#contact', via: 'get'
  match '/about_me',   to: 'home#about_me',   via: 'get'





end
