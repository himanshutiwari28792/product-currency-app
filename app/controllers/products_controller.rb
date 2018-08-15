class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
    json_response(@products)
  end

  def show
    price = @product.get_price_by_location(params)
    product_response = get_product_response(price)
    json_response(product_response)
  end

  private

  def get_product_response(price)
    {
      name: @product.name,
      description: @product.description,
      price: price
    }
  end

  def product_params
    # whitelist params
    params.permit(:name, :description, :price, :created_at)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
