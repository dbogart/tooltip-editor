class StateTooltipsController < ApplicationController
  before_action :set_state_tooltip, only: [:show, :update, :destroy]

  # GET /state_tooltips
  # GET /state_tooltips.json
  def index
    @state_tooltips = StateTooltip.all

    render json: @state_tooltips
  end

  # GET /state_tooltips/1
  # GET /state_tooltips/1.json
  def show
    render json: @state_tooltip
  end

  # POST /state_tooltips
  # POST /state_tooltips.json
  def create
    @state_tooltip = StateTooltip.new(state_tooltip_params)

    if @state_tooltip.save
      render json: @state_tooltip, status: :created, location: @state_tooltip
    else
      render json: @state_tooltip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /state_tooltips/1
  # PATCH/PUT /state_tooltips/1.json
  def update
    @state_tooltip = StateTooltip.find(params[:id])

    if @state_tooltip.update(state_tooltip_params)
      head :no_content
    else
      render json: @state_tooltip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /state_tooltips/1
  # DELETE /state_tooltips/1.json
  def destroy
    @state_tooltip.destroy

    head :no_content
  end

  private

    def set_state_tooltip
      @state_tooltip = StateTooltip.find(params[:id])
    end

    def state_tooltip_params
      params.require(:state_tooltip).permit(:state_id, :tooltip_id)
    end
end
