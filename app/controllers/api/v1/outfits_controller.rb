class Api::V1::OutfitsController < ApplicationController
    skip_before_action :authorized
    def index
        @outfits = Outfit.all
        render json: @outfits, include: [ :items]
    end

    def show
        @outfit = Outfit.find_by(id: params[:id])
        render json: @outfit, include:  [ :items]
    end

    def create
        @outfit = Outfit.create(outfit_params)
        render json: @outfit
    end

    def destroy
        itemoutfits = ItemOutfit.where(:outfit_id => params[:id])
        itemoutfits.destroy_all
        Outfit.destroy(params[:id])
    end



    private
    def outfit_params
        params.permit(:name, :condition, :user_id)
    end
end
