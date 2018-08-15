Rails.application.routes.draw do
	
  resources :dogs
  resources :employees

  # PATCH '/employees/:id', to: 'employees#update'
  # Patch '/dogs/:id', to: 'dogs#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
