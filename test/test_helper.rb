require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include ApplicationHelper
  
  # Add more helper methods to be used by all tests here...
  def is_logged_in?
    !session[:user_id].nil?
  end

    test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end
end
