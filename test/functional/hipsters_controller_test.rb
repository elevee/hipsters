require 'test_helper'

class HipstersControllerTest < ActionController::TestCase
  setup do
    @hipster = hipsters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hipsters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hipster" do
    assert_difference('Hipster.count') do
      post :create, hipster: { favorite_beer: @hipster.favorite_beer, irony_rating: @hipster.irony_rating, moustache: @hipster.moustache, name: @hipster.name }
    end

    assert_redirected_to hipster_path(assigns(:hipster))
  end

  test "should show hipster" do
    get :show, id: @hipster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hipster
    assert_response :success
  end

  test "should update hipster" do
    put :update, id: @hipster, hipster: { favorite_beer: @hipster.favorite_beer, irony_rating: @hipster.irony_rating, moustache: @hipster.moustache, name: @hipster.name }
    assert_redirected_to hipster_path(assigns(:hipster))
  end

  test "should destroy hipster" do
    assert_difference('Hipster.count', -1) do
      delete :destroy, id: @hipster
    end

    assert_redirected_to hipsters_path
  end
end
