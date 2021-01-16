RailsTimeTravel::Engine.routes.draw do
  puts "RailsTimeTravel::Engine.routes.draw OK"
  root to: "manage#index"
  post "/set_datetime", to: "manage#set_datetime"
end

Rails.application.routes.draw do
  mount_routes
end
