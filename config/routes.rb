Rails.application.routes.draw do
  get 'welcome/index'

<<<<<<< Updated upstream
  resources :items do
    resources :comments
  end
=======
  resources :items, :home
>>>>>>> Stashed changes

root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end