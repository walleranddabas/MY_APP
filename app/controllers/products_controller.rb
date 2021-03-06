class ProductsController < ApplicationController
    def index
      @products = Product.all
    end
    def show
      @product = Product.find(params[:id])
    end
    def new
      @product = Product.new
    end
    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to product_path(@product)
      else
        render :new
      end
    end
    def edit
    end
    def update
    end
    def destroy
    end
    def product_params
      params.require(:product).permit(:name, :url)
    end
end
