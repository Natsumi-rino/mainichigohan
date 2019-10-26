require 'test_helper'

class WhattimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whattime = whattimes(:one)
  end

  test "should get index" do
    get whattimes_url
    assert_response :success
  end

  test "should get new" do
    get new_whattime_url
    assert_response :success
  end

  test "should create whattime" do
    assert_difference('Whattime.count') do
      post whattimes_url, params: { whattime: { name: @whattime.name } }
    end

    assert_redirected_to whattime_url(Whattime.last)
  end

  test "should show whattime" do
    get whattime_url(@whattime)
    assert_response :success
  end

  test "should get edit" do
    get edit_whattime_url(@whattime)
    assert_response :success
  end

  test "should update whattime" do
    patch whattime_url(@whattime), params: { whattime: { name: @whattime.name } }
    assert_redirected_to whattime_url(@whattime)
  end

  test "should destroy whattime" do
    assert_difference('Whattime.count', -1) do
      delete whattime_url(@whattime)
    end

    assert_redirected_to whattimes_url
  end
end
