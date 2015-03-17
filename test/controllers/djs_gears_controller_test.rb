require 'test_helper'

class DjsGearsControllerTest < ActionController::TestCase
  setup do
    @djs_gear = djs_gears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:djs_gears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create djs_gear" do
    assert_difference('DjsGear.count') do
      post :create, djs_gear: {  }
    end

    assert_redirected_to djs_gear_path(assigns(:djs_gear))
  end

  test "should show djs_gear" do
    get :show, id: @djs_gear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @djs_gear
    assert_response :success
  end

  test "should update djs_gear" do
    patch :update, id: @djs_gear, djs_gear: {  }
    assert_redirected_to djs_gear_path(assigns(:djs_gear))
  end

  test "should destroy djs_gear" do
    assert_difference('DjsGear.count', -1) do
      delete :destroy, id: @djs_gear
    end

    assert_redirected_to djs_gears_path
  end
end
