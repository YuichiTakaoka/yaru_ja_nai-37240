Rails.application.routes.draw do
  devise_for :users
  get 'profiles/index'
  root to: "profiles#index"
    resources :profiles, only: [:new, :create, :show, :edit, :update]
end
