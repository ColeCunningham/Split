class TransactionsController < ApplicationController
    def create
        @item = Item.find(params[:item_id])
        @transaction = @item.transactions.create(transaction_params)
        redirect_to item_path(@item)
    end
    
    private
        def transaction_params
            params.require(:transaction).permit(:name, :quantity)
        end
end
