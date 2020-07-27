class CategoriesController < ApplicationController

    def index
        categories = Category.all
        render json: categories.to_json(methods: :project_previews)
    end

    def show
        category = Category.find(params[:id])
        render json: category.to_json(methods: :project_previews)
    end

end
