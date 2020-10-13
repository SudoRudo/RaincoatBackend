class Api::V1::ItemTagsController < ApplicationController
    skip_before_action :authorized

    def index
        @item_tags = ItemTag.all
        render json: @item_tags, include: [:item, :tag]
    end

    def show
        @item_tag = ItemTag.find_by(id: params[:id])
        render json: @item_tag, include: [:item, :tag]
    end

    def create
        @item_tag = ItemTag.create(item_tag_params)
        render json: @item_tag
    end


    private
    
    def item_tag_params
        params.require(:item_tag).permit(:item_id, :tag_id)
    end
end
