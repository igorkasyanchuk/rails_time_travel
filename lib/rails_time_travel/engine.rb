require "rails_time_travel/controller"

module RailsTimeTravel
  class Engine < ::Rails::Engine
    isolate_namespace RailsTimeTravel

    ActionController::Base.send :include, RailsTimeTravel::Controller
  end
end
