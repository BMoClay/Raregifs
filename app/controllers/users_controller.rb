class UsersController < ApplicationController
  before_action :authenticate, only: [:me, :update]
    # def index
    #   users = User.all
    #   render json: users
    # end

    def login
      user = User.first
      render json: @current_user
    end

    def signup 
      user = User.create(user_params)
      render json: @current_user
    end

    def me 
      render json: @current_user
    end

    # def show
    #   user = User.find(params[:id])
    #   render json: user
    # end

    # def create
    #   user = User.create(user_params)
    #   render json: user
    # end

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

    # def acquisitions
    #     user = User.find(params[:id])
    #     render json: user.acquisitions
    # end

    private
      def user_params
        params.permit(:name, :password)
      end
end
