class Api::V1::ItemsController < ApplicationController
    # skip_before_action :authorized

    def index
        @items = Item.all
        render json: @items, include: [:tags, :category]
    end

    def show
        @item = Item.find_by(id: params[:id])
        render json: @item, include: [:tags, :category]
    end

    def create
        @item = Item.create(item_params)
        render json: @item
    end

    def destroy
        Item.destroy(params[:id])
    end



    private
    def item_params
        params.permit(:name, :image, :user_id, :category)
    end
end
