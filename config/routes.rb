Rails.application.routes.draw do
  match "/find", to: "find_help#index", :via => 'get'
  match "/installation_find", to: "installations#show", :via => 'post'
 
  resources :reviews

  resources :categories

  resources :contacts do
    resources :reviews
  end

  resources :installations do
    post :installation_find
  end

  root to: 'visitors#index'
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
end
