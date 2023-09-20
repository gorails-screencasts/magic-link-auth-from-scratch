class ApplicationController < ActionController::Base
  def authenticate
    Current.user ||= User.find_by(id: session[:user_id])
  end

  def login(user)
    user.touch :last_sign_in_at
    session[:user_id] = user.id
    Current.user = user
  end

  def logout
    session[:user_id] = nil
    Current.user = nil
  end
end
