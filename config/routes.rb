Rails.application.routes.draw do
resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :users, only: [:index, :new, :create, :destroy, :edit, :update]
 
  root 'users#index'
end


 
  # get 'users/:id/edit' => 'users#edit'
  # post 'users/:id' => 'users#update'
  
  # get 'tweets/:id/edit' => 'tweets#edit'
  # post 'tweets/:id' => 'tweets#update'