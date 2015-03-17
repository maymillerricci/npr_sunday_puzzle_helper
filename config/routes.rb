Rails.application.routes.draw do
  root "welcome#index"
  get "welcome/index"
  resources :anagram, only: [:new, :create]
end
