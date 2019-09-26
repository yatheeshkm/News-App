Rails.application.routes.draw do
  get 'users/sign_in'
  get 'users/sign_up' => "users#sign_up", :as => 'user_signup'
  #get 'users/sign-in' => "users#sign-in", :as => 'users_signin'
  get 'catalogs/main' => "catalogs#main", :as => 'main_abc'

  resources :catalogs do
    resources :polls, :galleries, :articles do
      resources :comments, only: [:index, :new, :create]
    end

  end
end



=begin
member do
        # Thumbnail Routes
        get :new_comment
        post :comments

        # Medias Routes
        get :new_media
        post :medias
        
        # Thumbnail Routes
        get :new_thumbnail
        post :thumbnails
      end

      collection do
        get :all_comments
        get :all_medias
        get :all_thumbnails
      end
=end