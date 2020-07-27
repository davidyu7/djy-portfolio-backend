class ProjectsController < ApplicationController

    def show
        project = Project.find(params[:id])
        render json: project.to_json(include: [:images, :comments, :tags, :category, :folder])
    end

end
