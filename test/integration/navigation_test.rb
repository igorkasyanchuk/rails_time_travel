require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "open manage page" do
    get "/"
    assert_equal 200, status
  end

  test "submit seconds" do
    post "/rails/time_travel/set_datetime", params: { seconds: 100 }
    assert_equal 302, status
    assert session[:timecop_date].present?
  end

  test "submit seconds & resets" do
    post "/rails/time_travel/set_datetime", params: { seconds: 'reset' }
    assert_equal 302, status
    assert session[:timecop_date].nil?
  end
end
