require "test_helper"

module RailsTimeTravel
  class ManageControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get manage_index_url
      assert_response :success
    end
  end
end
