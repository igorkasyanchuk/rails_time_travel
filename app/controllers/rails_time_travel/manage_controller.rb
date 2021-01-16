require_dependency "rails_time_travel/application_controller"

module RailsTimeTravel
  class ManageController < RailsTimeTravel::ApplicationController
    def index
    end

    def set_datetime
      if params[:seconds] == "reset"
        Timecop.return
        session.delete(:timecop_date)
      else
        session[:timecop_date] = params[:seconds].to_i.seconds.ago
      end
      redirect_to action: :index
    end
  end
end
