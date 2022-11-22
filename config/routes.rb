Rails.application.routes.draw do
  resources :books
  resources :authors
  get 'authors/get_all', to: "authors#get_all"
  delete 'authors/destroy', to: "authors#destroy"
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
