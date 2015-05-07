Rails.application.routes.draw do
  root 'welcome#index'

  resources :baskets, only: [:show, :create, :destroy] do
    resources :items, only: [:create, :destroy], defaults: { format: :json }
  end
  resources :cupcakes, only: :index
end
