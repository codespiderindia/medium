class Admin::SessionsController < Admin::BaseController
  #layout "admin_welcome" # custom layout for admin login page

  # filter to check admin user is logged in or not
 # before_filter :admin_user_logged_in, only: [:new]

  def new

  end

  def create
    admin_user = User.find_by_email(params[:email])

    if admin_user && admin_user.authenticate(params[:password])
      session[:admin_user_id] = admin_user.id
      redirect_to admin_dashboard_index_path, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid."
      render "new"
    end
  end

  def destroy
    session[:admin_user_id] = nil
    redirect_to admin_path, notice: "Logged out!"
  end
end
