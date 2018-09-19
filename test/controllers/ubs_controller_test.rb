require 'test_helper'

class UbsControllerTest < ActionController::TestCase
  setup do
    @ub = ubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ub" do
    assert_difference('Ub.count') do
      post :create, ub: { description: @ub.description }
    end

    assert_redirected_to ub_path(assigns(:ub))
  end

  test "should show ub" do
    get :show, id: @ub
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ub
    assert_response :success
  end

  test "should update ub" do
    patch :update, id: @ub, ub: { description: @ub.description }
    assert_redirected_to ub_path(assigns(:ub))
  end

  test "should destroy ub" do
    assert_difference('Ub.count', -1) do
      delete :destroy, id: @ub
    end

    assert_redirected_to ubs_path
  end
end
