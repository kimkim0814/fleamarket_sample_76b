# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
    @user = User.new(sign_up_params)
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
    session["devise.regist_data"] = {user: @user.attributes}
    session["devise.regist_data"][:user]["password"] = params[:user][:password]
    @identification = @user.build_identification
    render :new_identification
  end

  def create_identification
    @user = session["devise.regist_data"]["user"]
    @identification = Identification.new(identification_params)
    unless @identification.valid?
      flash.now[:alert] = @identification.errors.full_messages
      render :new_identification and return
    end
    @address = Address.new
    session["devise.regist_data"] = {identification: @identification.attributes},{user: @user}
    render :new_address
  end

  def create_address
    @user = User.new(session["devise.regist_data"][1]["user"])
    @address = @user.build_address(address_params)
    @identification = Identification.new(session["devise.regist_data"][0]["identification"])
    unless @address.valid?
      flash.now[:alert] = @address.errors.full_messages
      render :new_address and return
    end
    session["devise.regist_data"][0]["identification"].clear
    @user.build_identification(@identification.attributes)	
    @user.save
    session["devise.regist_data"][1]["user"].clear
    sign_in(:user, @user) 
  end

 
  protected

  def identification_params
    params.require(:identification).permit(:familyname,:firstname,:familyname_kana,:firstname_kana,:birth_date)
  end

  def address_params
    params.require(:address).permit(:postcode, :prefecture_code, :address_city, :address_street,:address_building,:phone_number)
  end
  
  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
