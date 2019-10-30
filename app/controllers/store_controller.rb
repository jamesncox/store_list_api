class StoreController < ApplicationController

    def show
        @store = Store.find_by(id: params[:id])
        options = {
            include: [:lists]
        }
        render json: StoreSerializer.new(@store, options)
    end

end
