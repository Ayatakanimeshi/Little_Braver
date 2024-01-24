class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_active_storage_host

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private

  def check_admin
    redirect_to(root_url) unless current_user&.admin?
  end

  def set_active_storage_host
    ActiveStorage::Current.url_options = { protocol: 'http', host: request.host, port: request.port }
  end
end
