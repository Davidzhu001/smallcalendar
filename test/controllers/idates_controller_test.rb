require 'test_helper'

class IdatesControllerTest < ActionController::TestCase
  setup do
    @idate = idates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idate" do
    assert_difference('Idate.count') do
      post :create, idate: { description: @idate.description, ending_date: @idate.ending_date, start_date: @idate.start_date, title: @idate.title }
    end

    assert_redirected_to idate_path(assigns(:idate))
  end

  test "should show idate" do
    get :show, id: @idate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idate
    assert_response :success
  end

  test "should update idate" do
    patch :update, id: @idate, idate: { description: @idate.description, ending_date: @idate.ending_date, start_date: @idate.start_date, title: @idate.title }
    assert_redirected_to idate_path(assigns(:idate))
  end

  test "should destroy idate" do
    assert_difference('Idate.count', -1) do
      delete :destroy, id: @idate
    end

    assert_redirected_to idates_path
  end
end
