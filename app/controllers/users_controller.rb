class UsersController < ApplicationController
  before_action :authenticate, only: [:me, :update]
  
    def me 
      render json: @current_user
    end
    
    def google_login
      user = AuthorizeGoogleRequest.new(request.headers).user
      if user      
        token = JsonWebToken.encode({ user_id: user.id })
        render json: { user: UserSerializer.new(user), token: token }
      else
        render json: { errors: ["Oops something went wrong"]}, status: :unauthorized
      end
    end

    def login
      user = User.find_by(name: params[:name])
      # byebug
      if user && user.authenticate(params[:password])
        token = JsonWebToken.encode({ user_id: user.id })
        render json: { user: UserSerializer.new(user), token: token }
      else 
        render json: { errors: ["Invalid name or password"] }, status: :unauthorized
      end
    end

    def signup 
      user = User.create(user_params)
      if user.valid?
        token = JsonWebToken.encode({ user_id: user.id })
        render json: { user: UserSerializer.new(user), token: token }, status: :created
      else 
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def index
      users = User.all
      render json: users
    end

    def show
      user = User.find(params[:id])
      render json: user
      # render json: @current_user
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
      # @current_user.update(user_params)
      # render json: @current_user
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: user
      # @current_user.destroy
      # render json: @current_user
    end


    private

      def user_params
        params.permit(:name, :password)
      end
end