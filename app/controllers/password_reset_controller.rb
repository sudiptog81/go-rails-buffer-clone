class PasswordResetController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to root_path, notice: 'In case an account was found, a password reset link has been sent to your e-mail.'
  end

  def edit
    @user = User.find_signed!(params[:token], purpose: 'reset_password')
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to login_path, alert: 'Password reset link is invalid or has expired. Please try again.'
  end

  def update
    @user = User.find_signed!(params[:token], purpose: 'reset_password')
    if @user.update(password_params)
      redirect_to login_path, notice: 'Password was reset successfully.'
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
