class UserMailer < ApplicationMailer
  def login
    mail to: params[:user].email
  end
end
