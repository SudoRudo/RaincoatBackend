class Api::V1::TagsController < ApplicationController
    skip_before_action :authorized

    def index
        @tags = Tag.all
        render json: @tags, include: [:items]
    end

    def show
        @tag = Tag.find_by(id: params[:id])
        render json: @item_tag, include: [:items ]
    end
end
