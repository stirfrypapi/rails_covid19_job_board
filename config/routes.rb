Rails.application.routes.draw do
  resources :applications
  resources :openings
  resources :employers
  resources :applicants
  resources :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
