class UsersController < ApplicationController
  before_action :authenticate, only: [:me, :update]
  # before_action :authenticate
  
    def index
      users = User.all
      render json: users
    end

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

    def show
      user = User.find(params[:id])
      render json: user
      # render json: @current_user
    end

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

    # def myAcquisitions
    #   # user = User.find(params[:id])
    #   # render json: user.acquisitions
    #   # @current_user.acquisitions
    #   render json: @current_user.acquisitions
    # end 

    # def acquisitions
    #   render json: @current_user.acquisitions
    # end

    # def artworks 
    #   render json: @current_user.acquisitions
    # end

    # def myArtworks 
    #   # user = User.find(params[:id])
    #   # render json: user.artworks
    # #  @current_user.artworks
    #   render json: @current_user.artworks
    # end
       
    private
      def user_params
        params.permit(:name, :password)
      end
end
