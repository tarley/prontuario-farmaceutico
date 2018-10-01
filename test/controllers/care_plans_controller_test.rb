require 'test_helper'

class CarePlansControllerTest < ActionController::TestCase
  setup do
    @care_plan = care_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:care_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create care_plan" do
    assert_difference('CarePlan.count') do
      post :create, care_plan: { anothers_conduct: @care_plan.anothers_conduct, conduct: @care_plan.conduct, pharmacotherapy_id: @care_plan.pharmacotherapy_id, prmCause_id: @care_plan.prmCause_id, prm_id: @care_plan.prm_id, results_date: @care_plan.results_date, sfc_id: @care_plan.sfc_id, therapeutic_goal: @care_plan.therapeutic_goal }
    end

    assert_redirected_to care_plan_path(assigns(:care_plan))
  end

  test "should show care_plan" do
    get :show, id: @care_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @care_plan
    assert_response :success
  end

  test "should update care_plan" do
    patch :update, id: @care_plan, care_plan: { anothers_conduct: @care_plan.anothers_conduct, conduct: @care_plan.conduct, pharmacotherapy_id: @care_plan.pharmacotherapy_id, prmCause_id: @care_plan.prmCause_id, prm_id: @care_plan.prm_id, results_date: @care_plan.results_date, sfc_id: @care_plan.sfc_id, therapeutic_goal: @care_plan.therapeutic_goal }
    assert_redirected_to care_plan_path(assigns(:care_plan))
  end

  test "should destroy care_plan" do
    assert_difference('CarePlan.count', -1) do
      delete :destroy, id: @care_plan
    end

    assert_redirected_to care_plans_path
  end
end
