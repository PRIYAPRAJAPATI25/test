class ProductsController < ApplicationController
  def index
    @products = Product.all

  end

  def new
    @product = Product.new
    #@user = User.find(params[:user])
  end

  def create
    @user = User.find(params[:product][:user_id])
    @product = Product.new(product_params)
      if @product.save
        redirect_to products_path
      else
        render :new
      end 
  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
     if @product.destroy
      redirect_to products_path
    else
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :product_type, :product_price, :user_id, :role, :country_id, :product_type_id)
  end


end
