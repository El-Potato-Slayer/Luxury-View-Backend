class UserRepresenter
  def initialize(user)
    @user = user
  end

  def as_json
    {
      id: user.id,
      username: user.username,
      email: user.email,
      first_name: user.first_name,
      last_name: user.last_name,
      is_admin: user.is_admin,
      token: AuthenticationTokenService.call(user.id)
    }
  end

  private

  attr_reader :user
end
