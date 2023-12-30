# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts, shallow: true do
    resources :comments, only: %i[create], as: 'post_comments'
    resources :likes, only: :create
  end
  root 'posts#index'
end
