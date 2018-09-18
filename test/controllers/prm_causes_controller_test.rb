require 'test_helper'

class PrmCausesControllerTest < ActionController::TestCase
  setup do
    @prm_cause = prm_causes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prm_causes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prm_cause" do
    assert_difference('PrmCause.count') do
      post :create, prm_cause: { description: @prm_cause.description }
    end

    assert_redirected_to prm_cause_path(assigns(:prm_cause))
  end

  test "should show prm_cause" do
    get :show, id: @prm_cause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prm_cause
    assert_response :success
  end

  test "should update prm_cause" do
    patch :update, id: @prm_cause, prm_cause: { description: @prm_cause.description }
    assert_redirected_to prm_cause_path(assigns(:prm_cause))
  end

  test "should destroy prm_cause" do
    assert_difference('PrmCause.count', -1) do
      delete :destroy, id: @prm_cause
    end

    assert_redirected_to prm_causes_path
  end
end
