    # app/auth/authenticate_user.rb
class AuthenticateUser
  prepend SimpleCommand
  attr_accessor :email, :password

  #this is where parameters are taken when the command is called
  def initialize(email, password)
    @email = email
    @password = password
  end
  
  #this is where the result gets returned
  def call
    #JsonWebToken.encode(login_detail_id: login_detail.id) if login_detail
    JsonWebToken.encode({id: login_detail.id, email: login_detail.email}) if login_detail
  end

  private

  def login_detail
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    errors.add :user_authentication, 'Invalid credentials'
    nil
  end
end
