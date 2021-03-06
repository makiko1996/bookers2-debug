Rails.application.routes.draw do
  
  get 'relationships/followings'
  get 'relationships/followers'
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  get '/search' => 'searchs#search'
  delete '/search' => 'searchs#search'
  
  devise_for :users
  
  resources :books do
    resources :book_comments, only:[:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  
  resources :users, only: [:index,:show,:edit,:update] do
      resource :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
  end
  
 
  
end