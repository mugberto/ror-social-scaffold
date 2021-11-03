class Api::ApiController < ActionController::API
  before_action :set_default_format
  before_action :authenticate!

  private

  def set_default_format
    request.format = :json
  end

  def authenticate!
    token = request.headers.fetch('Authorization', '').split(' ').last
    payload = JsonWebToken.decode(token)
    success! User.find(payload['sub'])
  rescue ::JWT::ExpiredSignature
    fail! 'Auth token has expired'
  rescue ::JWT::DecodeError
    fail! 'Auth token is invalid'
  end

  def success!(user)
    true if user
  end

  def fail!(msg)
    render json: { error: msg }
  end
end
