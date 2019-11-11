class ListsController < ApplicationController
    def index
        @lists = List.all 
        render json: ListSerializer.new(@lists), include: [:store]
    end

    def show
        @list = List.find_by(id: params[:id])
        render json: ListSerializer.new(@list), include: [:store]
    end

    def create
        @list = List.new(list_params)

        if list.save
          json_response(@list, :created)
        else
          render json: { message: 'List was not created.' }
        end
    end 

    private

    def list_params 
        params.require(:list).permit(:item, :quantity, :price)
    end
end
