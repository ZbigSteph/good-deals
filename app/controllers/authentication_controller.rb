class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  # POST auth/login
  def login
    # @user = User.find_by(email: params[:email])
    # if @user&.authenticate(params[:password])
    #   #token = jwt_encode(user_id: @user.id)

    #   render json: { data: @user, status: true }, status: :ok
    # else
    #   render json: { error: 'unauthorized', authenticate: false }, status: :unauthorized
    # end
    @partner = Partner.find_by(telephone: params[:telephone])
    if @partner.present? && @partner.password == params[:password]
      render json: @partner
    else
      render json: { error: 'Utilisateur non existant' }
    end
  end

end
