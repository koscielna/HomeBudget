class RegistrationController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:user][:username]
    @user.bank = params[:user][:bank]
    @user.account_number = params[:user][:account_number]
    @user.adress = params[:user][:adress]
    @user.password = params[:user][:password]
    @user.email = params[:user][:email]

    if @user.errors.blank?
      @user.save
      redirect_to dashboard_path
    else
      render :action => "new"
    end
  end
end
