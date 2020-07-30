class ImagesController < ApplicationController
    def create
        image = Image.create(image_params)
        render json: image
    end

    private

    def image_params
        params.require(:image).permit(:project_id, :src_url, :description)
    end
end
