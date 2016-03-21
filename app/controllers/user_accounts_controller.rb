class UserAccountsController < ApplicationController
  before_action :set_user, only: %i(edit update destroy)

  def show
    @user = UserRepository.find(params.require(:id))
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    create_user_account_service = CreateUserAccountService.new(user_account_params)
    if create_user_account_service.valid?
      create_user_account_service.regist!
      user = create_user_account_service.instance
      redirect_to user_account_path(user)
    else
      @user = create_user_account_service.instance
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
  def set_user
    @user = current_user
  end

  def user_account_params
    params.require(:user_account).permit(:name, :email, :password)
  end
end
