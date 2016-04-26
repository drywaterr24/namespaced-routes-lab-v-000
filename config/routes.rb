Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :settings, :access, :preference 
  end

  resources :songs

end
