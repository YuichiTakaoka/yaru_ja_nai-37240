Rails.application.routes.draw do
  devise_for :users
  get 'profiles/index'
  root to: "profiles#index"
    resources :profiles do
      collection do
        get 'search'
      end
    end
end
