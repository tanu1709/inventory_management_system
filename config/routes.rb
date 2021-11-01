Rails.application.routes.draw do
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
    namespace :api do
      resources :inventories
      resources :employees
    end
  end
end
