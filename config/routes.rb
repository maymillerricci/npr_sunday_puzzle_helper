Rails.application.routes.draw do
  root "welcome#index"
  get "welcome/index"
  resources :anagrams, only: [:new, :create]
end
