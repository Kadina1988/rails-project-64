# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts, shallow: true do
    resources :likes, only: %i[create]
  end

  resources :posts do
    resources :comments, only: %i[create]
    resources :likes, only: :destroy
  end

  root 'posts#index'
end
