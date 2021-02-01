Rails.application.routes.draw do
  get 'static_pages/home'

  root 'static_pages#home'

  # Seasons and weeks paths
  resources :seasons, shallow: :true do
    resources :weeks
  end

  resources :weeks, only: [:edit, :update, :show, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
