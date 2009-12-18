require 'test_helper'

class WorkPatternsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_patterns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_pattern" do
    assert_difference('WorkPattern.count') do
      post :create, :work_pattern => { }
    end

    assert_redirected_to work_pattern_path(assigns(:work_pattern))
  end

  test "should show work_pattern" do
    get :show, :id => work_patterns(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => work_patterns(:one).to_param
    assert_response :success
  end

  test "should update work_pattern" do
    put :update, :id => work_patterns(:one).to_param, :work_pattern => { }
    assert_redirected_to work_pattern_path(assigns(:work_pattern))
  end

  test "should destroy work_pattern" do
    assert_difference('WorkPattern.count', -1) do
      delete :destroy, :id => work_patterns(:one).to_param
    end

    assert_redirected_to work_patterns_path
  end
end
