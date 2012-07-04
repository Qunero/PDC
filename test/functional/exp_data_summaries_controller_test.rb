require 'test_helper'

class ExpDataSummariesControllerTest < ActionController::TestCase
  setup do
    @exp_data_summary = exp_data_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exp_data_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp_data_summary" do
    assert_difference('ExpDataSummary.count') do
      post :create, exp_data_summary: { fdr: @exp_data_summary.fdr, identified_pep_num: @exp_data_summary.identified_pep_num, identified_pro_num: @exp_data_summary.identified_pro_num, identified_spectra_num: @exp_data_summary.identified_spectra_num, project_id: @exp_data_summary.project_id, spectra_num: @exp_data_summary.spectra_num }
    end

    assert_redirected_to exp_data_summary_path(assigns(:exp_data_summary))
  end

  test "should show exp_data_summary" do
    get :show, id: @exp_data_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exp_data_summary
    assert_response :success
  end

  test "should update exp_data_summary" do
    put :update, id: @exp_data_summary, exp_data_summary: { fdr: @exp_data_summary.fdr, identified_pep_num: @exp_data_summary.identified_pep_num, identified_pro_num: @exp_data_summary.identified_pro_num, identified_spectra_num: @exp_data_summary.identified_spectra_num, project_id: @exp_data_summary.project_id, spectra_num: @exp_data_summary.spectra_num }
    assert_redirected_to exp_data_summary_path(assigns(:exp_data_summary))
  end

  test "should destroy exp_data_summary" do
    assert_difference('ExpDataSummary.count', -1) do
      delete :destroy, id: @exp_data_summary
    end

    assert_redirected_to exp_data_summaries_path
  end
end
