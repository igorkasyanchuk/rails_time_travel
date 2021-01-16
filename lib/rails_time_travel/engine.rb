module RailsTimeTravel
  class Engine < ::Rails::Engine
    isolate_namespace RailsTimeTravel

    ActionController::Base.send :include, RailsTimeTravel::Controller
  end
end
