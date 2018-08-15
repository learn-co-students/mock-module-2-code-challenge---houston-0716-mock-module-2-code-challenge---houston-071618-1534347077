Rails.application.routes.draw do
  get 'dogs/show'

  get 'dogs/index'

  get 'dogs/edit'

  get 'dogs/new'
  
  get 'employees/show'

  get 'employees/index'

  get 'employees/edit'

  get 'employees/new'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
