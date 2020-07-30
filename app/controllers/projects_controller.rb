class ProjectsController < ApplicationController

    def show
        project = Project.find(params[:id])
        render json: project.to_json(include: [:images, :comments, :tags, :category, :folder])
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)
    end

    private

    def project_params
        params.require(:project).permit!
    end

end
