class ApplicationController < ActionController::API
    
    def authenticate
        @current_user = AuthorizeRequest.new(request.headers).user
        if @current_user.nil?
            render json: { errors: ["Not Authorized"] }, status: :unauthorized
        end
    end

end

        # user = User.find_by(name: params[:name]) 
        # if user && user.authenticate(params[:password])
        #   render json: user
        # else 
        #   render json: { errors: ["Invalid name or password"] }, status: :unauthorized
        # end 