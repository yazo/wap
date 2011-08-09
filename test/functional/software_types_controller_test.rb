require 'test_helper'

class SoftwareTypesControllerTest < ActionController::TestCase
  setup do
    @software_type = software_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:software_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create software_type" do
    assert_difference('SoftwareType.count') do
      post :create, :software_type => @software_type.attributes
    end

    assert_redirected_to software_type_path(assigns(:software_type))
  end

  test "should show software_type" do
    get :show, :id => @software_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @software_type.to_param
    assert_response :success
  end

  test "should update software_type" do
    put :update, :id => @software_type.to_param, :software_type => @software_type.attributes
    assert_redirected_to software_type_path(assigns(:software_type))
  end

  test "should destroy software_type" do
    assert_difference('SoftwareType.count', -1) do
      delete :destroy, :id => @software_type.to_param
    end

    assert_redirected_to software_types_path
  end
end
