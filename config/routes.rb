Rails.application.routes.draw do
  get 'users/sign_in'
  get 'users/sign_up' => "users#sign_up", :as => 'user_signup'
  #get 'users/sign-in' => "users#sign-in", :as => 'users_signin'
  get 'catalogs/main' => "catalogs#main", :as => 'main_abc'

  resources :catalogs do
    resources :polls 
    resources :galleries
    resources :articles

  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
