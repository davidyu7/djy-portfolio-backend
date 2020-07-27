class TagsController < ApplicationController

    def index
        tags = Tag.all
        render json: tags.to_json(methods: :project_previews)
    end

    def show
        tag = Tag.find(params[:id])
        render json: tag.to_json(methods: :project_previews)
    end
    
end
