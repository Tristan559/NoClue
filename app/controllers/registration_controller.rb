class RegistrationController < Devise::RegistrationsController
  def new

    @user= User.new
    @contact = Contact.new
  end

  def create

    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation =params[:user][:password_confirmation]

    @contact = Contact.new
    @contact.mobile = params[:contact][:mobile]
    @contact.address_1 = params[:contact][:address_1]
    @contact.address_2 = params[:contact][:address_2]
    @contact.state = params[:contact][:state]
    @contact.zip_code = params[:contact][:zip_code]

    @user.valid?

    if @user.errors.blank?

      @user.save
      @contact.user = @user
      @contact.save
      redirect_to dashboard_path
    else
      render :action => "new"
    end
  end

end
