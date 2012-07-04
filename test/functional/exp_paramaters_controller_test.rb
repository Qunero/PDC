require 'test_helper'

class ExpParamatersControllerTest < ActionController::TestCase
  setup do
    @exp_paramater = exp_paramaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exp_paramaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exp_paramater" do
    assert_difference('ExpParamater.count') do
      post :create, exp_paramater: { db: @exp_paramater.db, enzyme: @exp_paramater.enzyme, fixed_mod: @exp_paramater.fixed_mod, instrument: @exp_paramater.instrument, ion_tol: @exp_paramater.ion_tol, mass_type: @exp_paramater.mass_type, miss_clv: @exp_paramater.miss_clv, pep_tol: @exp_paramater.pep_tol, pro_mass: @exp_paramater.pro_mass, project_id: @exp_paramater.project_id, var_mod: @exp_paramater.var_mod }
    end

    assert_redirected_to exp_paramater_path(assigns(:exp_paramater))
  end

  test "should show exp_paramater" do
    get :show, id: @exp_paramater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exp_paramater
    assert_response :success
  end

  test "should update exp_paramater" do
    put :update, id: @exp_paramater, exp_paramater: { db: @exp_paramater.db, enzyme: @exp_paramater.enzyme, fixed_mod: @exp_paramater.fixed_mod, instrument: @exp_paramater.instrument, ion_tol: @exp_paramater.ion_tol, mass_type: @exp_paramater.mass_type, miss_clv: @exp_paramater.miss_clv, pep_tol: @exp_paramater.pep_tol, pro_mass: @exp_paramater.pro_mass, project_id: @exp_paramater.project_id, var_mod: @exp_paramater.var_mod }
    assert_redirected_to exp_paramater_path(assigns(:exp_paramater))
  end

  test "should destroy exp_paramater" do
    assert_difference('ExpParamater.count', -1) do
      delete :destroy, id: @exp_paramater
    end

    assert_redirected_to exp_paramaters_path
  end
end
