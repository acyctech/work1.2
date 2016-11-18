require 'test_helper'

class UrlfavsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urlfav = urlfavs(:one)
  end

  test "should get index" do
    get urlfavs_url
    assert_response :success
  end

  test "should get new" do
    get new_urlfav_url
    assert_response :success
  end

  test "should create urlfav" do
    assert_difference('Urlfav.count') do
      post urlfavs_url, params: { urlfav: { description: @urlfav.description, url: @urlfav.url } }
    end

    assert_redirected_to urlfav_url(Urlfav.last)
  end

  test "should show urlfav" do
    get urlfav_url(@urlfav)
    assert_response :success
  end

  test "should get edit" do
    get edit_urlfav_url(@urlfav)
    assert_response :success
  end

  test "should update urlfav" do
    patch urlfav_url(@urlfav), params: { urlfav: { description: @urlfav.description, url: @urlfav.url } }
    assert_redirected_to urlfav_url(@urlfav)
  end

  test "should destroy urlfav" do
    assert_difference('Urlfav.count', -1) do
      delete urlfav_url(@urlfav)
    end

    assert_redirected_to urlfavs_url
  end
end
