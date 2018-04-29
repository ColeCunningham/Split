class ItemsController < ApplicationController
    def index
        @items = Item.all
    end
   
    def new
        @item = Item.new
    end
    
    def create
        @item = Item.new(item_params)
        
        if @item.save
            redirect_to @item
        else
            render 'new'
        end
    end
    
    def edit
        @item = Item.find(params[:id])
    end
    
    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            redirect_to @item
        else
            render 'edit'
        end
    end
    
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        
        redirect_to items_path
    end
    
    def show
        @item = Item.find(params[:id])
    end
    
    private
    def item_params
<<<<<<< HEAD
       params.require(:item).permit(:title, :description, :date) 
=======
       params.require(:item).permit(:title, :imgUrl, :url, :quantity, :price) 
>>>>>>> 194eba1f1294882cbf11538725ea4038ea43e835
    end
    
end


