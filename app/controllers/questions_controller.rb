class QuestionsController < ApplicationController
    def create
        @item = Item.find(params[:item_id])
        @question = @item.questions.create(question_params)
        redirect_to item_path(@item)
    end
    
    def destroy
        @item = Item.find(params[:item_id])
        @question = @item.questions.find(params[:id])
        @question.destroy
        redirect_to items_path(@item)
    end
    
    private
        def question_params
            params.require(:question).permit(:name, :question)
        end
end
