Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipe
  # post '/recipe/:id', to 'recipes#new'  
end
