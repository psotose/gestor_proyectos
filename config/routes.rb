Rails.application.routes.draw do
  get 'projects', to: 'projects#index'
  get 'projects/new'
  get 'projects/create'
  post 'projects', to: 'projects#save'
  get 'projects/edit'
  get 'projects/show'

  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
