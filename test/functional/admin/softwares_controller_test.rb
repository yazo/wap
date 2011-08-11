require 'test_helper'

class Admin::SoftwaresControllerTest < ActionController::TestCase
  setup do
    @admin_software = admin_softwares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_softwares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_software" do
    assert_difference('Admin::Software.count') do
      post :create, :admin_software => @admin_software.attributes
    end

    assert_redirected_to admin_software_path(assigns(:admin_software))
  end

  test "should show admin_software" do
    get :show, :id => @admin_software.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_software.to_param
    assert_response :success
  end

  test "should update admin_software" do
    put :update, :id => @admin_software.to_param, :admin_software => @admin_software.attributes
    assert_redirected_to admin_software_path(assigns(:admin_software))
  end

  test "should destroy admin_software" do
    assert_difference('Admin::Software.count', -1) do
      delete :destroy, :id => @admin_software.to_param
    end

    assert_redirected_to admin_softwares_path
  end
end
