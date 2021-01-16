RailsTimeTravel::Engine.routes.draw do
  root to: "manage#index"
  post "/set_datetime", to: "manage#set_datetime"
end

Rails.application.routes.draw do
  begin
    mount RailsTimeTravel::Engine => "/rails/time_travel", as: 'rails_time_travel'
  rescue ArgumentError
      # already added
      # this code exist here because engine not includes routing automatically
  end
end
