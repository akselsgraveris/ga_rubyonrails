class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.create(product_params)
        
        if @product.save
            redirect_to action: 'index'
        else
            render 'new'
        end
    end

    def product_params
        params.require(:product).permit!
    end
end