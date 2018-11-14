class ProductsController < ApplicationController
  def new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to product_path @product.id
    else
      render "new"
    end
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    if product.update product_params
      redirect_to product_path
    else
      render "new"
    end
  end

  def show
    @product = Product.find params[:id]
  end

  private

  def product_params
    params.require(:product).permit(:name, :description,:short_description, :price, :location_id, :image)
  end
end
