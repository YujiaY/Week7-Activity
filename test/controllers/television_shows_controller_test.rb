require 'test_helper'

class TelevisionShowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @television_show = television_shows(:one)
  end

  test "should get index" do
    get television_shows_url
    assert_response :success
  end

  test "should get new" do
    get new_television_show_url
    assert_response :success
  end

  test "should create television_show" do
    assert_difference('TelevisionShow.count') do
      post television_shows_url, params: { television_show: { details: @television_show.details, name: @television_show.name } }
    end

    assert_redirected_to television_show_url(TelevisionShow.last)
  end

  test "should show television_show" do
    get television_show_url(@television_show)
    assert_response :success
  end

  test "should get edit" do
    get edit_television_show_url(@television_show)
    assert_response :success
  end

  test "should update television_show" do
    patch television_show_url(@television_show), params: { television_show: { details: @television_show.details, name: @television_show.name } }
    assert_redirected_to television_show_url(@television_show)
  end

  test "should destroy television_show" do
    assert_difference('TelevisionShow.count', -1) do
      delete television_show_url(@television_show)
    end

    assert_redirected_to television_shows_url
  end
end
