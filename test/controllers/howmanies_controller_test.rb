require 'test_helper'

class HowmaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @howmany = howmanies(:one)
  end

  test "should get index" do
    get howmanies_url
    assert_response :success
  end

  test "should get new" do
    get new_howmany_url
    assert_response :success
  end

  test "should create howmany" do
    assert_difference('Howmany.count') do
      post howmanies_url, params: { howmany: { name: @howmany.name } }
    end

    assert_redirected_to howmany_url(Howmany.last)
  end

  test "should show howmany" do
    get howmany_url(@howmany)
    assert_response :success
  end

  test "should get edit" do
    get edit_howmany_url(@howmany)
    assert_response :success
  end

  test "should update howmany" do
    patch howmany_url(@howmany), params: { howmany: { name: @howmany.name } }
    assert_redirected_to howmany_url(@howmany)
  end

  test "should destroy howmany" do
    assert_difference('Howmany.count', -1) do
      delete howmany_url(@howmany)
    end

    assert_redirected_to howmanies_url
  end
end
