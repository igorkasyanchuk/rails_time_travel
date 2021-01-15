require_dependency "rails_time_travel/application_controller"

module RailsTimeTravel
  class ManageController < ApplicationController
    def index
    end

    def set_datetime
      if params[:days] == "reset"
        Timecop.return
        session[:timecop_date] = nil
      else
        session[:timecop_date] = params[:days].to_i.days.ago
      end
      redirect_to action: :index
    end
  end
end
