class ApplicationController < ActionController::Base
  alias_method :old_current_user, :current_user

  def current_user
    UserRepository.find(old_current_user.id)
  end
end
