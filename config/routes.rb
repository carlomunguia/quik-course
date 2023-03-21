Rails.application.routes.draw do
  resources :enrollments
  devise_for :users
  resources :courses do
    resources :lessons
    resources :enrollments, only: %i[new create]
  end
  resources :users, only: %i[index edit show update]
  root "static_pages#landing_page"
  get "static_pages/activity"
  # get "static_pages/privacy_policy"
  get "privacy_policy", to: "static_pages#privacy_policy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
