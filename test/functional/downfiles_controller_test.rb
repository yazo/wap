require 'test_helper'

class DownfilesControllerTest < ActionController::TestCase
  setup do
    @downfile = downfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:downfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create downfile" do
    assert_difference('Downfile.count') do
      post :create, :downfile => @downfile.attributes
    end

    assert_redirected_to downfile_path(assigns(:downfile))
  end

  test "should show downfile" do
    get :show, :id => @downfile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @downfile.to_param
    assert_response :success
  end

  test "should update downfile" do
    put :update, :id => @downfile.to_param, :downfile => @downfile.attributes
    assert_redirected_to downfile_path(assigns(:downfile))
  end

  test "should destroy downfile" do
    assert_difference('Downfile.count', -1) do
      delete :destroy, :id => @downfile.to_param
    end

    assert_redirected_to downfiles_path
  end
end
