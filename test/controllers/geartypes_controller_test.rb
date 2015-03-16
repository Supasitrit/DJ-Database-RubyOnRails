require 'test_helper'

class GeartypesControllerTest < ActionController::TestCase
  setup do
    @geartype = geartypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geartypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geartype" do
    assert_difference('Geartype.count') do
      post :create, geartype: {  }
    end

    assert_redirected_to geartype_path(assigns(:geartype))
  end

  test "should show geartype" do
    get :show, id: @geartype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geartype
    assert_response :success
  end

  test "should update geartype" do
    patch :update, id: @geartype, geartype: {  }
    assert_redirected_to geartype_path(assigns(:geartype))
  end

  test "should destroy geartype" do
    assert_difference('Geartype.count', -1) do
      delete :destroy, id: @geartype
    end

    assert_redirected_to geartypes_path
  end
end
