Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'cocktails/index'
  get 'cocktails/create'
  get 'cocktails/new'
  get 'cocktails/edit'
  get 'cocktails/show'
  get 'cocktails/update'
  get 'cocktails/destroy'
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
