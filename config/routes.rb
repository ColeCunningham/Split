Rails.application.routes.draw do
  get 'welcome/index'

<<<<<<< HEAD
  resources :items, :home, :welcome
=======
<<<<<<< Updated upstream
  resources :items do
    resources :comments
  end
=======
  resources :items, :home
>>>>>>> Stashed changes
>>>>>>> e7818d7c38946aed7813518d2d77c41d686b8ce5

root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end