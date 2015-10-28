require 'test_helper'

class DonughtsControllerTest < ActionController::TestCase
  setup do
    @donught = donughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donught" do
    assert_difference('Donught.count') do
      post :create, donught: {  }
    end

    assert_redirected_to donught_path(assigns(:donught))
  end

  test "should show donught" do
    get :show, id: @donught
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donught
    assert_response :success
  end

  test "should update donught" do
    patch :update, id: @donught, donught: {  }
    assert_redirected_to donught_path(assigns(:donught))
  end

  test "should destroy donught" do
    assert_difference('Donught.count', -1) do
      delete :destroy, id: @donught
    end

    assert_redirected_to donughts_path
  end
end
