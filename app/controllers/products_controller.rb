class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    render json: Product.create(product_params)
  end

  def update
    product = Product.find(params[:id])
    render json: product.update(product_params)
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :price, :image_url)
  end
end
