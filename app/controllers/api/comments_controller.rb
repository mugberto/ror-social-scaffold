class Api::CommentsController < Api::ApiController
  def index
    post = Post.find(params[:post_id])
    render json: post.comments
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(user_id: current_user.id, content: params[:content])
    if @comment.save
      render plain: 'Created', status: :created
    else 
      render plain: 'Not created', status: :no_content
    end
  end
end
