Rails.application.routes.draw do

  get 'image/new'

  get 'image/update'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  scope 'api' do
    get 'ping' => 'ping#ping'
    get 'secured/ping' => 'secured_ping#ping'
    get 'users/me' => 'users#me'
    post 'users/update' => 'users#update'
    post 'image/new' => 'image#new'
    get 'education/all' => 'education#all'
    resources :users, :only => [:show,:update]
  end
end
