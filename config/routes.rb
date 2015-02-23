Rails.application.routes.draw do
  root 'ping#ping'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  scope 'api' do
    get 'ping' => 'ping#ping'
    get 'secured/ping' => 'secured_ping#ping'
    get 'users/me' => 'users#me'
    post 'users/update' => 'users#update'
    post 'users/settings/update' => 'users#update_settings'
    post 'image/new' => 'image#new'
    get 'images/me' => 'image#me'
    get 'image/:id/delete' => 'image#delete'
    get 'education/all' => 'education#all'
    resources :users, :only => [:show,:update]

    get 'matches/find' => 'match#matches'
  end

end
