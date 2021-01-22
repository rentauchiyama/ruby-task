Rails.application.routes.draw do
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post 'users' ,to:'users#create'
    get 'users/new' ,to:'users#new'
end
