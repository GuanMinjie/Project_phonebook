require 'test_helper'

class LinkmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linkman = linkmen(:one)
  end

  test "should get index" do
    get linkmen_url
    assert_response :success
  end

  test "should get new" do
    get new_linkman_url
    assert_response :success
  end

  test "should create linkman" do
    assert_difference('Linkman.count') do
      post linkmen_url, params: { linkman: { name: @linkman.name, number: @linkman.number } }
    end

    assert_redirected_to linkman_url(Linkman.last)
  end

  test "should show linkman" do
    get linkman_url(@linkman)
    assert_response :success
  end

  test "should get edit" do
    get edit_linkman_url(@linkman)
    assert_response :success
  end

  test "should update linkman" do
    patch linkman_url(@linkman), params: { linkman: { name: @linkman.name, number: @linkman.number } }
    assert_redirected_to linkman_url(@linkman)
  end

  test "should destroy linkman" do
    assert_difference('Linkman.count', -1) do
      delete linkman_url(@linkman)
    end

    assert_redirected_to linkmen_url
  end
end
