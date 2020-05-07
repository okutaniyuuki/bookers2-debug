require 'test_helper'

class BookCoommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_coomments_index_url
    assert_response :success
  end

end
