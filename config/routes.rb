# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'root#index'

  namespace :camera do
    resources :images, only: %i[show create]
    resources :showcase, only: %i[index show], param: :page
  end
end
