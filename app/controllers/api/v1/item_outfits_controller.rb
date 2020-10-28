class Api::V1::ItemOutfitsController < ApplicationController
    skip_before_action :authorized

    def index
        @item_outfits = ItemOutfit.all
        render json: @item_outfits, include: [:item, :outfit]
    end

    def show
        @item_outfit = ItemOutfit.find_by(id: params[:id])
        render json: @item_outfit, include: [:item, :outfit]
    end

    def create
        @item_outfit = ItemOutfit.create(item_outfit_params)
        render json: @item_outfit
    end


    private
    
    def item_outfit_params
        params.permit(:item_id, :outfit_id)
    end
end
