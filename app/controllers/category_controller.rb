class CategoryController < ApplicationController
    def index
        categories = Category.all
        render json: {

        }
    end

    def show
        category = Category.find(params[:id])
        render json:
end