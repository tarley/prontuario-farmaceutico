require 'test_helper'

class SfcsControllerTest < ActionController::TestCase
  setup do
    @sfc = sfcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sfcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sfc" do
    assert_difference('Sfc.count') do
      post :create, sfc: { description: @sfc.description }
    end

    assert_redirected_to sfc_path(assigns(:sfc))
  end

  test "should show sfc" do
    get :show, id: @sfc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sfc
    assert_response :success
  end

  test "should update sfc" do
    patch :update, id: @sfc, sfc: { description: @sfc.description }
    assert_redirected_to sfc_path(assigns(:sfc))
  end

  test "should destroy sfc" do
    assert_difference('Sfc.count', -1) do
      delete :destroy, id: @sfc
    end

    assert_redirected_to sfcs_path
  end
end
