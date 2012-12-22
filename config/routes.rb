MessageBoard::Application.routes.draw do

  resources :posts

  root :to => 'posts#index'
  
  match "/auth/:provider/callback" => "sessions#create"
  match 'auth/failure', to: redirect('/')
  match "/signout" => "sessions#destroy", :as => :signout

end
