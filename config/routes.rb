# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts, except: :create, shallow: true do
    resources :likes, only: %i[create]
  end

  resources :posts do
    resources :comments, only: %i[create]
    resources :likes, only: :destroy
  end

  resources :users, only: [] do
    resources :posts, only: :create
  end

  root 'posts#index'
end
