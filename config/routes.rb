Oliverpictures::Application.routes.draw do
  resources :pictures, only: [:index, :show] do
    resources :comments, only: [:create]
  end
  root to: 'pictures#index'
end
