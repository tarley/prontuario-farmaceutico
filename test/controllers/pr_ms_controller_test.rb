require 'test_helper'

class PrMsControllerTest < ActionController::TestCase
  setup do
    @prm = prms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prm" do
    assert_difference('Prm.count') do
      post :create, prm: { description: @prm.description }
    end

    assert_redirected_to prm_path(assigns(:prm))
  end

  test "should show prm" do
    get :show, id: @prm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prm
    assert_response :success
  end

  test "should update prm" do
    patch :update, id: @prm, prm: { description: @prm.description }
    assert_redirected_to prm_path(assigns(:prm))
  end

  test "should destroy prm" do
    assert_difference('Prm.count', -1) do
      delete :destroy, id: @prm
    end

    assert_redirected_to prms_path
  end
end
