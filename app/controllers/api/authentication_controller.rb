class Api::AuthenticationController < Api::ApiController
  skip_before_action :authenticate!, only: :create

  def create
    user = User.find_by(email: params[:email])
    if user.valid_password? params[:password]
      render json: { auth_token: JsonWebToken.encode(sub: user.id) }
    else
      render json: { errors: ['Invalid email or password'] }
    end
  end
end
