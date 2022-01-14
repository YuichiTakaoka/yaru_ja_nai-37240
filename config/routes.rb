Rails.application.routes.draw do
  devise_for :users
  get 'profiles/index'
  root to: "profiles#index"
    resources :profiles do
      resources :comments, only: :create
      collection do
        get 'search'
      end
    end
end
