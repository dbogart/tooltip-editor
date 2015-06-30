require 'test_helper'

class TooltipsControllerTest < ActionController::TestCase
  setup do
    @tooltip = tooltips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tooltips)
  end

  test "should create tooltip" do
    assert_difference('Tooltip.count') do
      post :create, tooltip: { definition: @tooltip.definition, term: @tooltip.term, updated_by: @tooltip.updated_by }
    end

    assert_response 201
  end

  test "should show tooltip" do
    get :show, id: @tooltip
    assert_response :success
  end

  test "should update tooltip" do
    put :update, id: @tooltip, tooltip: { definition: @tooltip.definition, term: @tooltip.term, updated_by: @tooltip.updated_by }
    assert_response 204
  end

  test "should destroy tooltip" do
    assert_difference('Tooltip.count', -1) do
      delete :destroy, id: @tooltip
    end

    assert_response 204
  end
end
