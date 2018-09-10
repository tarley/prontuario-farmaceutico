require 'test_helper'

class TypeSexesControllerTest < ActionController::TestCase
  setup do
    @type_sex = type_sexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_sexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_sex" do
    assert_difference('TypeSex.count') do
      post :create, type_sex: { description: @type_sex.description }
    end

    assert_redirected_to type_sex_path(assigns(:type_sex))
  end

  test "should show type_sex" do
    get :show, id: @type_sex
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_sex
    assert_response :success
  end

  test "should update type_sex" do
    patch :update, id: @type_sex, type_sex: { description: @type_sex.description }
    assert_redirected_to type_sex_path(assigns(:type_sex))
  end

  test "should destroy type_sex" do
    assert_difference('TypeSex.count', -1) do
      delete :destroy, id: @type_sex
    end

    assert_redirected_to type_sexes_path
  end
end
