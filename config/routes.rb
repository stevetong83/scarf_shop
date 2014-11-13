Rails.application.routes.draw do

  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'


  resources :messages, only: :create
  get 'contact', to: 'messages#new'
  get 'about-us', to: 'pages#about'


end
