class Api::PostsController < Api::ApiController
  def index
    render json: Post.all
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      render plain: 'Created', status: :created
    else
      render json: current_user
    end
  end

  private

  def post_params
    params.permit(:content)
  end
end
