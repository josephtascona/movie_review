Rails.application.routes.draw do
  root 'movies#index'

  devise_for :users

  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
