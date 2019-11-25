Rails.application.routes.draw do
  resources :christmasevenings
  resources :participants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'christmasevenings/show_years/:year', to: 'christmasevenings#show_years'
  get 'christmasevenings/show_year_giver/:year/:giver', to: 'christmasevenings#show_year_giver'
  post 'christmasevenings/scramble/', to: 'christmasevenings#scramble'
end
