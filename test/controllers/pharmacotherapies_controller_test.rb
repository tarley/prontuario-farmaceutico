require 'test_helper'

class PharmacotherapiesControllerTest < ActionController::TestCase
  setup do
    @pharmacotherapy = pharmacotherapies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmacotherapies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharmacotherapy" do
    assert_difference('Pharmacotherapy.count') do
      post :create, pharmacotherapy: { carePlan: @pharmacotherapy.carePlan, descriptionDisease: @pharmacotherapy.descriptionDisease, dosageSchedule: @pharmacotherapy.dosageSchedule, effectiveness: @pharmacotherapy.effectiveness, medicine: @pharmacotherapy.medicine, safety: @pharmacotherapy.safety, timeUse: @pharmacotherapy.timeUse, useDificulty: @pharmacotherapy.useDificulty }
    end

    assert_redirected_to pharmacotherapy_path(assigns(:pharmacotherapy))
  end

  test "should show pharmacotherapy" do
    get :show, id: @pharmacotherapy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pharmacotherapy
    assert_response :success
  end

  test "should update pharmacotherapy" do
    patch :update, id: @pharmacotherapy, pharmacotherapy: { carePlan: @pharmacotherapy.carePlan, descriptionDisease: @pharmacotherapy.descriptionDisease, dosageSchedule: @pharmacotherapy.dosageSchedule, effectiveness: @pharmacotherapy.effectiveness, medicine: @pharmacotherapy.medicine, safety: @pharmacotherapy.safety, timeUse: @pharmacotherapy.timeUse, useDificulty: @pharmacotherapy.useDificulty }
    assert_redirected_to pharmacotherapy_path(assigns(:pharmacotherapy))
  end

  test "should destroy pharmacotherapy" do
    assert_difference('Pharmacotherapy.count', -1) do
      delete :destroy, id: @pharmacotherapy
    end

    assert_redirected_to pharmacotherapies_path
  end
end
