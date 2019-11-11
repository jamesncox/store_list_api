class StoresController < ApplicationController

    def index
        @stores = Store.all 
        options = {
            include: [:lists]
        }
        render json: StoreSerializer.new(@stores, options), status: 200
    end

    def show
        @store = Store.find_by(id: params[:id])
        options = {
            include: [:lists]
        }
        render json: StoreSerializer.new(@store, options), status: 200
    end

    def create
        @store = Store.create(store_params)
        options = {
            include: [:lists]
        }
        render json: StoreSerializer.new(@store, options), status: 200
    end 

    private

    def store_params 
        params.require(:store).permit(:name)
    end
end
