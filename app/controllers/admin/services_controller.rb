class Admin::ServicesController < Admin::BaseController 
  before_action :set_admin_service, only: [:show, :edit, :update, :destroy]
  def index
  	@services = Service.where("type='Service'")
  end

  def create
  	@service = Service.new(admin_service_params)  
  	@service.type="Service"
    respond_to do |format|
      if @service.save
        format.html { redirect_to "/admin/services/", notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@service = Service.new
  end

  def edit
  end

  def update
  	 @service.type="Service"
     respond_to do |format|
      if @service.update(admin_service_params)
        format.html { redirect_to admin_services_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end

 def destroy
    @service.destroy
    redirect_to admin_services_url, notice: '删除成功'
 end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_service_params
       params.require(:service).permit(:title,:info,:content,:type,:image,:en_title)
    end

end
