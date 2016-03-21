class UserAccountParams < ValueObject
  def initialize(user_name:, email:, password: nil)
    @user_name = user_name
    @email = email
    @password = password
  end

  def valid?
    if @user_name.invalid? || @email.invalid?
      raise '正しく入力して下さい'
    end
  end
end
