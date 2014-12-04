Rails.application.routes.draw do

  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'

  Spree::Core::Engine.routes.draw do
    resources :messages, only: :create
    get 'contact', to: 'messages#new'
    get 'about', to: 'pages#about'
  end

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end

end
