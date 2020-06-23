class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :detail, :site_url, :production_period, :image, :github_url)
  end
end
