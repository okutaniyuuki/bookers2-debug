Rails.application.routes.draw do
  get 'book_coomments/index'
  root to: 'home#top'
  get '/home/about', to: 'home#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only:[:index, :show, :create, :destroy, :edit, :update] do
 	 resources :book_comments, only:[:create, :destroy]
  	 resource :favorites, only:[:create, :destroy]
  end
end
