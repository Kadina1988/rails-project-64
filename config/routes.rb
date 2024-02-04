# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts, shallow: true do
    resources :comments, only: %i[create], as: 'post_comments'
    resources :comments, only: :new
    resources :likes, only: %i[create]
    # resources :likes, only: :destroy, as: 'post_like'
  end

  resources :posts do
    resources :likes, only: :destroy
  end

  root 'posts#index'
end
