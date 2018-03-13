Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :playlists, except: [:new, :edit]
    resources :tracks, only: [:index]
    resources :track_playlists, only: [:create, :destroy]
    resources :searches, only: [:index]
  end

  root to: "static_pages#root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
