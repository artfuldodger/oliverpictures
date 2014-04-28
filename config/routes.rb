Oliverpictures::Application.routes.draw do
  resources :pictures, only: [:index, :show]
  root to: 'pictures#index'
end
