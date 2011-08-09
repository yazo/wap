require 'test_helper'

class MobileTypesControllerTest < ActionController::TestCase
  setup do
    @mobile_type = mobile_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mobile_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mobile_type" do
    assert_difference('MobileType.count') do
      post :create, :mobile_type => @mobile_type.attributes
    end

    assert_redirected_to mobile_type_path(assigns(:mobile_type))
  end

  test "should show mobile_type" do
    get :show, :id => @mobile_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mobile_type.to_param
    assert_response :success
  end

  test "should update mobile_type" do
    put :update, :id => @mobile_type.to_param, :mobile_type => @mobile_type.attributes
    assert_redirected_to mobile_type_path(assigns(:mobile_type))
  end

  test "should destroy mobile_type" do
    assert_difference('MobileType.count', -1) do
      delete :destroy, :id => @mobile_type.to_param
    end

    assert_redirected_to mobile_types_path
  end
end
