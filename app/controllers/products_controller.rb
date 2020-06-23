class ProductsController < ApplicationController
  def index
    @products = Product.all
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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to :action => "index", :id => @product.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
  end

  private
  def product_params
    params.require(:product).permit(:name, :detail, :site_url, :production_period, :image, :github_url, :language)
  end
end
