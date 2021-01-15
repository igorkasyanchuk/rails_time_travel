Rails.application.routes.draw do
  resources :users
  mount RailsTimeTravel::Engine => "/rails/time_travel"
end
