class CommentsController < ApplicationController
    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:project_id, :email, :display_name, :content)
    end
end
