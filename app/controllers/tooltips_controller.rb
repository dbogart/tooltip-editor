class TooltipsController < ApplicationController
  before_action :set_tooltip, only: [:show, :update, :destroy]

  # GET /tooltips
  # GET /tooltips.json
  def index
    @tooltips = Tooltip.all

    render json: @tooltips
  end

  # GET /tooltips/1
  # GET /tooltips/1.json
  def show
    render json: @tooltip
  end

  # POST /tooltips
  # POST /tooltips.json
  def create
    @tooltip = State.find_by(name: tooltip_params[:state_name]).tooltips.create(term: tooltip_params[:term], definition: tooltip_params[:definition], updated_by: tooltip_params[:updated_by])

    if @tooltip.save
      render json: @tooltip, status: :created, location: @tooltip
    else
      render json: @tooltip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tooltips/1
  # PATCH/PUT /tooltips/1.json
  def update
    @tooltip = Tooltip.find(params[:id])

    if @tooltip.update(tooltip_params)
      head :no_content
    else
      render json: @tooltip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tooltips/1
  # DELETE /tooltips/1.json
  def destroy
    @tooltip.destroy

    head :no_content
  end

  private

    def set_tooltip
      @tooltip = Tooltip.find(params[:id])
    end

    def tooltip_params
      params.require(:tooltip).permit(:term, :definition, :updated_by, :state_name)
    end
end
