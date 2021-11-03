class Api::UsersController < Api::ApiController
  def create
    User.create!(user_params)
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end