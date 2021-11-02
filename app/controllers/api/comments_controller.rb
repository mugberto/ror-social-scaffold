class Api::CommentsController < Api::ApiController
    def index
        post = Post.find(params[:post_id])
        render json: post.comments
    end
end