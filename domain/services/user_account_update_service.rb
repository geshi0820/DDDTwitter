class UserAccountUpdateService
  def initialize(user, user_info)
    @user = user
    @user_info = user_info
  end

  def regist!
    if @user_info.valid?
      @updated_user = UserRepository.account_update(user: @user, user_info: @user_info)
    end
  end

  def instance
    @updated_user
  end
end