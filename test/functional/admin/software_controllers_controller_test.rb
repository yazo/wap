require 'test_helper'

class Admin::SoftwareControllersControllerTest < ActionController::TestCase
  setup do
    @admin_software_controller = admin_software_controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_software_controllers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_software_controller" do
    assert_difference('Admin::SoftwareController.count') do
      post :create, :admin_software_controller => @admin_software_controller.attributes
    end

    assert_redirected_to admin_software_controller_path(assigns(:admin_software_controller))
  end

  test "should show admin_software_controller" do
    get :show, :id => @admin_software_controller.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_software_controller.to_param
    assert_response :success
  end

  test "should update admin_software_controller" do
    put :update, :id => @admin_software_controller.to_param, :admin_software_controller => @admin_software_controller.attributes
    assert_redirected_to admin_software_controller_path(assigns(:admin_software_controller))
  end

  test "should destroy admin_software_controller" do
    assert_difference('Admin::SoftwareController.count', -1) do
      delete :destroy, :id => @admin_software_controller.to_param
    end

    assert_redirected_to admin_software_controllers_path
  end
end
