class CreateUserAccountService
  def initialize(user_account_params)
    @user_account_params = user_account_params
  end

  def valid?
    user_account_params = UserAccountParams.new(@user_account_params)
    user_account_params.valid?
  end

  def regist!
    user_account_params = UserAccountParams.new(@user_account_params)
    if user_account_params.valid?
      @user = UserRepository.store!(user_account_params.attributes)
    end
  end

  def instance
    @user ||= User.new(@user_account_params)
  end
end