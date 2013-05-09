class LineItemsController < ApplicationController
  def index
    render json: LineItem.all
  end

  def create
    render json: LineItem.create(line_item_params)
  end

  def update
    line_item = LineItem.find(params[:id])
    render json: line_item.update(line_item_params)
  end

  private
  def line_item_params
    params.require(:line_item).permit(:quantity, :product_id)
  end
end
