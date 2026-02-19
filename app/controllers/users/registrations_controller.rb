class Users::RegistrationsController < Devise::RegistrationsController

  protected

  # Kayıttan sonra login sayfasına yönlendir
  def after_sign_up_path_for(resource)
    new_user_session_path
  end

  # Otomatik login kapat
  def sign_up(resource_name, resource)
    true
  end

end
