class ApplicationController < ActionController::API
    
    def authenticate 
        @current_user = User.first
        # user = User.find_by(name: params[:name])
        # if user && user.authenticate(params[:password])
        #   render json: user
        # else 
        #   render json: { errors: ["Invalid name or password"] }, status: :unauthorized
        # end
    end

end
