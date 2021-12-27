class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def show 
    @items = Item.find(params[:id])
  end
  def new
    @item = Item.new 
  end

  def create 
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def item_params
    params.require(:item).permit(:url_photo_logo, :name, :description, :price)
  end  
end 

