require 'test_helper'

class DjsControllerTest < ActionController::TestCase
  
  include Devise::TestHelpers



  setup do
    @dj = djs(:one)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)

  end

  test "login with invalid credentials" do
    User.stubs(:authenticate).returns false
    post :login, :coach => {:user_name => 'foo', :password =>'bar'}
    assert_equals flash[:error] , "Authentication failed"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:djs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dj" do
    assert_difference('Dj.count') do
      post :create, dj: {  description: @dj.description, genre: @dj.genre, name: @dj.name }
    end

    assert_redirected_to dj_path(assigns(:dj))
  end

  test "should show dj" do
    get :show, id: @dj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dj
    assert_response :success
  end

  test "should update dj" do
    patch :update, id: @dj, dj: { description: @dj.description, genre: @dj.genre, name: @dj.name }
    assert_redirected_to dj_path(assigns(:dj))
  end

  test "should destroy dj" do
    assert_difference('Dj.count', -1) do
      delete :destroy, id: @dj
    end

    assert_redirected_to djs_path
  end



end
