class ProductsController < ApplicationController
  before_action :build_product, except: [:index, :create]

  def index
    render json: Product.all
  end

  def show
    render json: @product
  end

  def create
    render json: Product.create(product_params)
  end

  def update
    render json: @product.update(product_params)
  end

  private
  def product_params
    params.require(:product).permit(:title, :description, :price, :image_url)
  end

  def build_product
    @product = Product.find(params[:id])
  end
end
