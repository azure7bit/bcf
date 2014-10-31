Rails.application.routes.draw do
  devise_for :admins, :skip => :registration

  resources :visitors

  resources :barista

  resources :buyers

  resources :articles

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  namespace :admin do
    root :to => "rails_admin/main#dashboard"
  end

  root to: "home#index"

  get 'gallery', to: 'home#gallery', as: 'gallery'
  get 'about', to: 'home#about', as: 'about'
  get 'contact', to: 'home#contact', as: 'contact'
  get 'faq', to: 'home#faq', as: 'faq'
  get 'iobc', to: 'home#iobc', as: 'iobc'
  get 'workshops', to: 'home#workshops', as: 'workshops'
  get 'exhibitions', to: 'home#exhibitions', as: 'exhibitions'
  get 'auctions', to: 'home#auctions', as: 'auctions'
  get 'download', to: 'home#download_map', as: 'download'
  get 'event', to: 'home#event', as: 'event'
end
