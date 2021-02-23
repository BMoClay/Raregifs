class UsersController < ApplicationController
    def index
      users = User.all
      render json: users
    end

    # auth? login? me?

    def show
      user = User.find(params[:id])
      render json: user
    end

    def create
      user = User.create(user_params)
      render json: user
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: user
    end

    def acquisitions
        user = User.find(params[:id])
        render json: user.acquisitions
    end

    private
      def user_params
        params.permit(:name, :password, :email)
      end
end
