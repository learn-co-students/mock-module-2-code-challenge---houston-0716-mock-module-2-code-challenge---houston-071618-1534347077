Rails.application.routes.draw do
  # get 'employees/index'
  #
  # get 'employees/show'
  #
  # get 'employees/new'
  #
  # get 'employees/edit'
  #
  # get 'dogs/index'
  #
  # get 'dogs/show'
  #
  # get 'dogs/new'
  #
  # get 'dogs/edit'

  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
