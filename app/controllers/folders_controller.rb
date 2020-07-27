class FoldersController < ApplicationController

    def index
        folders = Folder.all
        render json: folders.to_json(methods: :project_previews)
    end

    def show
        category = Category.find(params[:id])
        render json: category.to_json(methods: :project_previews)
    end
    
end
