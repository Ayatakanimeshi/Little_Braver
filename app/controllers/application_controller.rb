class ApplicationController < ActionController::Base
    private
  def check_admin
    redirect_to(root_url) unless current_user&.admin?
  end
end
