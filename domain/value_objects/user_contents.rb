class UserInfo < ValueObject
  def initialize(user_name, email)
    @user_name = user_name
    @email = email
  end

  def valid?
    if @user_name.invalid? || @email.invalid?
      raise '正しく入力して下さい'
    end
  end
end
