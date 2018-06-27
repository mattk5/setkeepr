Rails.application.routes.draw do
  get 'users/new'

  root to: 'pages#index'
end
