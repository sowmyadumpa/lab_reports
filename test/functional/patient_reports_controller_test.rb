require 'test_helper'

class PatientReportsControllerTest < ActionController::TestCase
  setup do
    @patient_report = patient_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_report" do
    assert_difference('PatientReport.count') do
      post :create, patient_report: {  }
    end

    assert_redirected_to patient_report_path(assigns(:patient_report))
  end

  test "should show patient_report" do
    get :show, id: @patient_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_report
    assert_response :success
  end

  test "should update patient_report" do
    put :update, id: @patient_report, patient_report: {  }
    assert_redirected_to patient_report_path(assigns(:patient_report))
  end

  test "should destroy patient_report" do
    assert_difference('PatientReport.count', -1) do
      delete :destroy, id: @patient_report
    end

    assert_redirected_to patient_reports_path
  end
end
