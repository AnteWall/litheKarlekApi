Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  scope 'api' do
    get 'ping' => 'ping#ping'
    get 'secured/ping' => 'secured_ping#ping'
    get 'users/me' => 'user#me'
    resources :users, :only => [:show,:update]
  end
end
