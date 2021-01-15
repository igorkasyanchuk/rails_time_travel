module RailsTimeTravel
  module ControllerHelper
    extend ActiveSupport::Concern

    included do
      around_action :time_travel_for_request
    end

    def time_travel_for_request
      time_travel
      yield
      time_travel_return
    end

    def time_travel
      logger.info 'TIME TRAVEL START'
      if session[:timecop_date]
        Timecop.travel(session[:timecop_date])
      else
        Timecop.return
      end
    end

    def time_travel_return
      logger.info 'TIME TRAVEL RETURN'
      Timecop.return
    end
  end
end