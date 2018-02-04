Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#index"

  get "/dashboard" => "static#dashboard"

  resources :participants, param: :unique_id
end
