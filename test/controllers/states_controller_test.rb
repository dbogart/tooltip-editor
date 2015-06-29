require 'test_helper'

class StatesControllerTest < ActionController::TestCase
  setup do
    @state = states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:states)
  end

  test "should create state" do
    assert_difference('State.count') do
      post :create, state: { name: @state.name }
    end

    assert_response 201
  end

  test "should show state" do
    get :show, id: @state
    assert_response :success
  end

  test "should update state" do
    put :update, id: @state, state: { name: @state.name }
    assert_response 204
  end

  test "should destroy state" do
    assert_difference('State.count', -1) do
      delete :destroy, id: @state
    end

    assert_response 204
  end
end
