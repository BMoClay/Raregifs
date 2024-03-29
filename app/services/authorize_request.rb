# take in the headers and get back authenticated user

class AuthorizeRequest 
    def initialize(headers = {})
        @headers = headers
    end

    def user
        payload = decode(auth_token)
        if payload
            User.find_by(id: payload['user_id'])
        end
    end

    private

    attr_reader :headers
      
    def decode(token)
        # JsonWebToken.decode(token)[0]
        JsonWebToken.decode(token)
    rescue
        nil
    end

    def auth_token
        # Bearer 123.ddst.3454
        headers['Authorization'].split.last if headers['Authorization']
    end
end

# AuthorizeRequest.new(request.headers).user