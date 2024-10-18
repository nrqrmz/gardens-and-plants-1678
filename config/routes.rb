Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: :create # index, new, create
  end
  resources :plants, only: %i[destroy show]
end
