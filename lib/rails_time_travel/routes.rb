module ActionDispatch::Routing
  class Mapper
    def mount_routes(options = {})
      mount RailsTimeTravel::Engine => '/rails/time_travel', :as => options[:as] || 'rails_time_travel'
    end
  end
end
