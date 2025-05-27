Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # 
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do 
    resources :users, only:[:index, :show, :edit, :update]
    resources :posts, only:[:index, :show, :destroy]
    resources :post_comments, only:[:index, :show, :destroy]
    get '/search' => 'serches#search'
    resources :tags, only:[:index, :create, :destroy]
  end

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :user do
    post "public/guest_sign_in", to: "public/sessions#guest_sign_in"
  end

  scope module: :public do
    root to: 'homes#top'
    get '/mypage' => 'users#mypage'
    get '/users/destroy_confirm' => 'users#destroy_confirm'
    resources :users, only:[:edit, :show, :update, :destroy] do
      resource :relationships, only:[:create, :destroy]
    end
    get '/users/:user_id/following' => 'relationships#following'
    get '/users/:user_id/followers' => 'relationships#followers'

    resources :rooms, only:[:create, :index, :show] do
      resources :messages, only:[:create]
    end

    resources :notifications, only:[:update]
    get '/search' => 'serches#shearch' 

    resources :posts do
      resources :post_comments, only:[:create, :destroy]
      resource :favorites, only:[:create, :destroy]
    end
  end

end
