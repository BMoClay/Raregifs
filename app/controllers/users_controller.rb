class UsersController < ApplicationController
  before_action :authenticate, only: [:me, :update]
  # before_action :authenticate
  
    def index
      users = User.all
      render json: users
    end

    def login
      user = User.find_by(name: params[:name])
      if user && user.authenticate(params[:password])
        token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
        render json: { user: UserSerializer.new(user), token: token }
      else 
        render json: { errors: ["Invalid name or password"] }, status: :unauthorized
      end
    end

    def signup 
      user = User.create(user_params)
      if user.valid?
        token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
        render json: { user: UserSerializer.new(user), token: token }, status: :created
      else 
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def me 
      render json: @current_user
    end

    def show
      user = User.find(params[:id])
      render json: user
      # render json: @current_user
    end

    def update
      # user = User.find(params[:id])
      @current_user.update(user_params)
      render json: @current_user
    end

    def destroy
      # user = User.find(params[:id])
      @current_user.destroy
      render json: @current_user
    end


    private

      def user_params
        params.permit(:name, :password)
      end
end