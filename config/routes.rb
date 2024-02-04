# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :posts, shallow: true do
    resources :comments, only: %i[create new]
    resources :likes, only: %i[create destroy]
  end

  root 'posts#index'
end
