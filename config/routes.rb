RailsTimeTravel::Engine.routes.draw do
  root to: "manage#index"
  post "/set_datetime", to: "manage#set_datetime"
end

Rails.application.routes.draw do
  mount_routes
end
