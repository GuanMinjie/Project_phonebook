Rails.application.routes.draw do
  resources :users
  resources :linkmen
  #resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :sign_in ,to: 'sessions#new'
  post :sign_in , to:'sessions#create'
  get :sign_up, to:'users#new'
  post :sign_up, to: 'users#create'
  delete :sign_out, to: 'sessions#destroy'
  post :send_email, to:'linkmen#send_email'
 root 'sessions#new'
end
