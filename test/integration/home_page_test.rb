require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  test 'home page says hello' do
    get root_path

    assert_response :success
    assert_match 'Hello', response.body
  end
end
