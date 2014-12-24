class Admin::SessionsController < Devise::SessionsController
	layout "admin"
	skip_action_callback :authenticate_admin!
    skip_action_callback :authenticate_approve!

    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:name, :password) }
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :password,:password_confirmation) }

  end

 

 def after_sign_in_path_for(resource_or_scope)
    if signed_in?
    	if !current_admin.is_approve
    		sign_out :admin
    		flash[:notice]= "您的账户没有通过审核，请等待."
    		"/admin/sign_in" 		
        else
          "/main"
        end
    end 
 end

 def after_sign_out_path_for(resource_or_scope)
   "/"
end
end