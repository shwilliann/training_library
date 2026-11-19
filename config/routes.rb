Rails.application.routes.draw do
  resources :reservations
  resources :category_books
  resources :author_books
  resources :loans
  resources :books
  resources :reviews
  resources :categories
  resources :authors
  resources :users
  resources :publishers
end
