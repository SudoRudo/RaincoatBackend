class Api::V1::UserCitiesController < ApplicationController
    skip_before_action :authorized
    
    def index
        @user_cities = UserCity.all
        render json: @user_cities
    end

    def show
        @user_city = UserCity.find_by(id: params[:id])
        render json: @user_city
    end

    def create
        @user_city = UserCity.create(user_city_params)
        render json: @user_city
    end


    private
    
    def user_city_params
        params.require(:user_city).permit(:user_id, :name)
    end
end
