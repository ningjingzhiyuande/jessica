class Admin::BaseController < ApplicationController
  layout "admin"
  before_action :authenticate_admin!
  before_action :authenticate_approve!

  def authenticate_approve!
  	#binding.pry  
  	# return redirect_to "/admin/sign_in",notice: "您的帐号还没有通过验证，请和管理员联系"  unless current_admin.is_approve

  end
end
