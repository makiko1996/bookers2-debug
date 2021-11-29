Rails.application.routes.draw do
  
  get 'book_comments/create'
  get 'book_comments/destroy'
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  
  devise_for :users
  resources :books
  resources :users,only: [:index,:show,:edit,:update]
 
  
end