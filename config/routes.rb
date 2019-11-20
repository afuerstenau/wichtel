Rails.application.routes.draw do
  resources :years do
    resources :givers
  end
  resources :christmasevenings
  resources :participants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
