Rails.application.routes.draw do

  root 'welcome#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  devise_scope :user do
    get '/logout', to: 'devise/sessions#destroy', as: :signout
  end
end
