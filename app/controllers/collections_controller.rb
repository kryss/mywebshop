class CollectionsController < ApplicationController
  before_filter :right_shop, :only => [ :edit, :update, :destroy ]
  
  def new
    @shop = current_shop
    @collection = Collection.new
  end

  def create
    @collection = current_shop.collections.build params[:collection]
    if @collection.save
      flash[:success] = "Collection created"
      redirect_back_or root_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @collection.update_attributes(params[:collection])
      flash[:success] = "Collection information updated."
      redirect_back_or root_path
    else
      @title = "Edit collection"
      render 'edit'
    end
  end

  def destroy
    @collection.destroy
    flash[:success] = "Collection destroyed."
    redirect_back_or root_path
  end

  def index
  end

private 
  def right_shop
    @collection = Collection.find(params[:id])
    @shop = current_shop
    redirect_back_or root_path unless current_shop.collections.include?(@collection)
  end
    

end
