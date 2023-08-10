Rails.application.routes.draw do
  resources :books, only: [:new, :index, :show]

  devise_for :users
  get '/' => 'homes#top', as: 'top'
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
