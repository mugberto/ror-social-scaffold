class Api::UsersController < Api::ApiController
  skip_before_action :authenticate!
  def create
    @user = User.new(user_params)
    if @user.save
      render plain: 'Created', status: :created
    else
      render plain: 'Not created'
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
