require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  fixtures :users

  def test_login
    get user_session_path
    assert_equal 200, status
    sign_in users(:sanyi)
    assert_equal 200, status
  end
end
