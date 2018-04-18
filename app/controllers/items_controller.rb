class ItemsController < ApplicationController
    def index
        @items = Item.all
    end
    
    def index
        @items = Item.all
    end
    
    def new
        @item = Item.new
    end
    
    def create
       @item = Item.new(params[:item])
       
       @item.save
       redirect_to @item
    end
end

private
    def item_params
       params.require(:item).permit(:title, :description) 
    end
