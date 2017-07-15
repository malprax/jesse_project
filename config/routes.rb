Rails.application.routes.draw do
  resources :location_searchs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'location_searchs#new'
end
