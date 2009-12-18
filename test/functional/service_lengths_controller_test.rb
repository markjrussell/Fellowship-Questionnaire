require 'test_helper'

class ServiceLengthsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_lengths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_length" do
    assert_difference('ServiceLength.count') do
      post :create, :service_length => { }
    end

    assert_redirected_to service_length_path(assigns(:service_length))
  end

  test "should show service_length" do
    get :show, :id => service_lengths(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_lengths(:one).to_param
    assert_response :success
  end

  test "should update service_length" do
    put :update, :id => service_lengths(:one).to_param, :service_length => { }
    assert_redirected_to service_length_path(assigns(:service_length))
  end

  test "should destroy service_length" do
    assert_difference('ServiceLength.count', -1) do
      delete :destroy, :id => service_lengths(:one).to_param
    end

    assert_redirected_to service_lengths_path
  end
end
