Rails.application.routes.draw do
  resources :users
  # get 'auth/index'
  root 'users#index'
  #
  # get 'auth/show'

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  },
    path: 'auth',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      password: 'secret',
      confirmation: 'verification',
      unlock: 'unblock',
      registration: 'register',
      sign_up: 'cmon_let_me_in'
    }


  devise_scope :user do
    get 'sign_in', to: 'devise/session#new'
  end
end
