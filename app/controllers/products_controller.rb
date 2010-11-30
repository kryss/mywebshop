class ProductsController < ApplicationController
  before_filter :right_collection?, :only => [ :edit, :update, :destroy, :show ]
  
  def new
    @product = Product.new
    @title = "New product"
  end

  def create
    @product = current_collection.products.build params[:product]
    if @product.save
      flash[:success] = "Product created"
      redirect_back_or root_path
    else
      render :new
    end
  end

  def update
    if @product.update_attributes(params[:product])
      flash[:success] = "Product information updated."
      redirect_back_or root_path
    else
      @title = "Edit product"
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:success] = "Collection destroyed."
    redirect_back_or root_path
  end

  def edit
    
  end

  def index
  end

  def show
    
  end

private
  def right_collection?
    @collection = current_collection
    @product = Product.find(params[:id])
    redirect_back_or root_path unless @collection.products.include?(@product)
  end
end
