require 'test_helper'

class ServiceAccessesControllerTest < ActionController::TestCase
  setup do
    @service_access = service_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_access" do
    assert_difference('ServiceAccess.count') do
      post :create, service_access: { description: @service_access.description }
    end

    assert_redirected_to service_access_path(assigns(:service_access))
  end

  test "should show service_access" do
    get :show, id: @service_access
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_access
    assert_response :success
  end

  test "should update service_access" do
    patch :update, id: @service_access, service_access: { description: @service_access.description }
    assert_redirected_to service_access_path(assigns(:service_access))
  end

  test "should destroy service_access" do
    assert_difference('ServiceAccess.count', -1) do
      delete :destroy, id: @service_access
    end

    assert_redirected_to service_accesses_path
  end
end
