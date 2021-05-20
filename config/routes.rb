Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create edit]
  put '/users/:id/edit', to: 'users#update', as: 'update_user'
end
