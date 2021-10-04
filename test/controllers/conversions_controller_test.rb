require "test_helper"

class ConversionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conversions_index_url
    assert_response :success
  end

  test "should get show" do
    get conversions_show_url
    assert_response :success
  end

  test "should get new" do
    get conversions_new_url
    assert_response :success
  end

  test "should get create" do
    get conversions_create_url
    assert_response :success
  end
end
