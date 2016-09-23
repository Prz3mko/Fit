require 'test_helper'

class TreningsControllerTest < ActionController::TestCase
  setup do
    @trening = trenings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trenings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trening" do
    assert_difference('Trening.count') do
      post :create, trening: { date: @trening.date, description: @trening.description, exercise: @trening.exercise }
    end

    assert_redirected_to trening_path(assigns(:trening))
  end

  test "should show trening" do
    get :show, id: @trening
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trening
    assert_response :success
  end

  test "should update trening" do
    patch :update, id: @trening, trening: { date: @trening.date, description: @trening.description, exercise: @trening.exercise }
    assert_redirected_to trening_path(assigns(:trening))
  end

  test "should destroy trening" do
    assert_difference('Trening.count', -1) do
      delete :destroy, id: @trening
    end

    assert_redirected_to trenings_path
  end
end
