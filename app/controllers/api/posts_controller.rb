class Api::PostsController < Api::ApiController
  def index
    render json: Post.all
  end
end
