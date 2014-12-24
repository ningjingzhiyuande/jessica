class Admin::AdvantagesController < Admin::BaseController 
  before_action :set_admin_advantage, only: [:show, :edit, :update, :destroy]
  def index
  	@advantages = Advantage.all
  end

  def create
  	@advantage = Advantage.new(admin_advantage_params)  
    respond_to do |format|
      if @advantage.save
        format.html { redirect_to "/admin/advantages/", notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @advantage }
      else
        format.html { render action: 'new' }
        format.json { render json: @advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@advantage = Advantage.new
  end

  def edit
  end

  def update
     respond_to do |format|
      if @advantage.update(admin_advantage_params)
        format.html { redirect_to admin_advantages_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end

 def destroy
    @advantage.destroy
    redirect_to admin_advantages_url, notice: '删除成功'
 end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_advantage
      @advantage = Advantage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_advantage_params
       params.require(:advantage).permit(:title,:info,:content,:type,:image)
    end

end
