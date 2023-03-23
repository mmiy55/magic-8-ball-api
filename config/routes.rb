Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :balls, only: [ :index, :show, :update, :create, :destroy ]
      get "balls/:id/shake", to: "balls#shake", as: :shake
    end
  end
end
