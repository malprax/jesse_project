Rails.application.routes.draw do
  resources :places do
    collection do
      put :get_locations
    end
  end

  root 'places#index'
end
