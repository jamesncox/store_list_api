class StoreController < ApplicationController

    def index
        @store = Store.all 
        render json: StoreSerializer.new(@store), status: 200
    end

    def show
        @store = Store.find_by(id: params[:id])
        options = {
            include: [:lists]
        }
        render json: StoreSerializer.new(@store, options), status: 200
    end

end
