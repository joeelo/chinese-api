class ApplicationController < ActionController::API
  # include ActionController::Serialization

  def encode_token(payload)
    JWT.encode(payload, "poop")
  end

  def auth_header
    request.headers["Authorization"]
  end

  def decode_token    
    if auth_header       
      begin         
        JWT.decode(auth_header, 'poop')[0]      
      rescue JWT::DecodeError        
        nil       
      end    
    end  
   end

  def current_user
    if decode_token
      user_id = decode_token["user_id"]
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in
    !!current_user
  end

end
