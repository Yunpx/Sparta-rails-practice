Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'

  resources :characters do
    resources :equipments
  end

  resources :equipments

  # get 'character/:id'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
