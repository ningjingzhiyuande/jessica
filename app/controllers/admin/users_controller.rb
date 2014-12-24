class Admin::UsersController < Admin::BaseController
  def index
  	@users = Admin.all
  end
  def approve
  	user = Admin.find params[:id]
  	user.toggle!(:is_approve)
  	redirect_to admin_services_url, notice: '修改成功'
  end

  def destroy
  	user = Admin.find params[:id]
    user.destroy
    redirect_to admin_users_url, notice: '删除成功'
 end
end
