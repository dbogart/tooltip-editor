require 'test_helper'

class StateTooltipsControllerTest < ActionController::TestCase
  setup do
    @state_tooltip = state_tooltips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:state_tooltips)
  end

  test "should create state_tooltip" do
    assert_difference('StateTooltip.count') do
      post :create, state_tooltip: { state_id: @state_tooltip.state_id, tooltip_id: @state_tooltip.tooltip_id }
    end

    assert_response 201
  end

  test "should show state_tooltip" do
    get :show, id: @state_tooltip
    assert_response :success
  end

  test "should update state_tooltip" do
    put :update, id: @state_tooltip, state_tooltip: { state_id: @state_tooltip.state_id, tooltip_id: @state_tooltip.tooltip_id }
    assert_response 204
  end

  test "should destroy state_tooltip" do
    assert_difference('StateTooltip.count', -1) do
      delete :destroy, id: @state_tooltip
    end

    assert_response 204
  end
end
