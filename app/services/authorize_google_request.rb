# take in the headers and get back authenticated user

class AuthorizeGoogleRequest 
    def initialize(headers = {})
        @headers = headers
    end

    def user
        payload = decode(auth_token)
        if payload
            # User.find_by(id: payload['user_id'])
            User.find_or_create_from_google(payload)
        end
    end

    private

    attr_reader :headers
      
    def decode(token)
        validator = GoogleIDToken::Validator.new 
        validator.check(token, "1015821135990-ivdthienjnk5ol8vjb4k75isajpggbk5.apps.googleusercontent.com")
        # JsonWebToken.decode(token)
    rescue
        nil
    end

    def auth_token
        headers['Authorization'].split.last if headers['Authorization']
    end
end

#AuthorizeGoogleRequest.new(request.headers).user