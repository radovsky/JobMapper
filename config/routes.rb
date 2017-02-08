Rails.application.routes.draw do
  devise_for :users
  get "users/sign_up" => "devise/registrations#new"

  get "companies/index" => "api/v1/companies#index"
  root "api/v1/companies#index"
end
