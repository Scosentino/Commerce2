require 'test_helper'

class MoviestttsControllerTest < ActionController::TestCase
  setup do
    @moviesttt = moviesttts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moviesttts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moviesttt" do
    assert_difference('Moviesttt.count') do
      post :create, moviesttt: { active: @moviesttt.active, description: @moviesttt.description, name: @moviesttt.name, price: @moviesttt.price }
    end

    assert_redirected_to moviesttt_path(assigns(:moviesttt))
  end

  test "should show moviesttt" do
    get :show, id: @moviesttt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moviesttt
    assert_response :success
  end

  test "should update moviesttt" do
    patch :update, id: @moviesttt, moviesttt: { active: @moviesttt.active, description: @moviesttt.description, name: @moviesttt.name, price: @moviesttt.price }
    assert_redirected_to moviesttt_path(assigns(:moviesttt))
  end

  test "should destroy moviesttt" do
    assert_difference('Moviesttt.count', -1) do
      delete :destroy, id: @moviesttt
    end

    assert_redirected_to moviesttts_path
  end
end
