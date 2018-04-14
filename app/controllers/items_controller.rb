class ItemsController < ApplicationController
    
    def new
    end
    
    def index
        @listings = Listing.all
    end
    
    def create
       @listing = Listing.new(params[:listing])
       
       @listing.save
       redirect_to @listing
    end
end

private
    def listing_params
       params.require(:listing).permit(:title, :description) 
    end
