Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/create'
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :list, only: [:index, :show, :create, :new] do
    resources :bookmark, only: [:create, :new]
  end
  resources :bookmark, only: [:delete]
end
