require 'test_helper'

class AttendancesControllerTest < ActionController::TestCase
  setup do
    @attendance = attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendance" do
    assert_difference('Attendance.count') do
      post :create, attendance: { attendance_date: @attendance.attendance_date, general_screen: @attendance.general_screen, pacient_id: @attendance.pacient_id }
    end

    assert_redirected_to attendance_path(assigns(:attendance))
  end

  test "should show attendance" do
    get :show, id: @attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendance
    assert_response :success
  end

  test "should update attendance" do
    patch :update, id: @attendance, attendance: { attendance_date: @attendance.attendance_date, general_screen: @attendance.general_screen, pacient_id: @attendance.pacient_id }
    assert_redirected_to attendance_path(assigns(:attendance))
  end

  test "should destroy attendance" do
    assert_difference('Attendance.count', -1) do
      delete :destroy, id: @attendance
    end

    assert_redirected_to attendances_path
  end
end
