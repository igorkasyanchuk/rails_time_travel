module RailsTimeTravel
  class ApplicationController < ::ApplicationController
    include RailsTimeTravel::Controller

    layout 'rails_time_travel/application'
  end
end
