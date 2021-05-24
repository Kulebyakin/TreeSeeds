require "test_helper"

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get payment" do
    get about_payment_url
    assert_response :success
  end
end
