Rails.application.routes.draw do
  get 'equipment/index'
  get 'equipment/new'
  get 'equipment/create'
  get 'equipment/show'
  get 'equipment/edit'
  get 'equipment/update'
  get 'equipment/delete'
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
