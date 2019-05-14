Rails.application.routes.draw do
  get 'monsters/edit'
  get 'monster/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :monsters
end
