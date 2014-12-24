class Admin::RegistrationsController < Devise::RegistrationsController
	layout "admin"

	def after_sign_up_path_for(resource)
		sign_out :admin
		flash[:notice] = "您好，请等待审核"
        '/admin/sign_in'
    end
  
end