Rails.application.routes.draw do
  root 'welcome#index'

  resources :cupcakes, only: :index
end
