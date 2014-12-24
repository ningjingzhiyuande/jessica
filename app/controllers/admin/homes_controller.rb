class Admin::HomesController < Admin::BaseController
   before_action :set_admin_home, only: [:show, :edit, :update, :destroy]
  def index
  	@homes = Home.all
  end

  def list
  	@homes = Home.all
  end

  def about_us
  	@about_us = Home.where("title='关于我们'").first || Home.new("title"=>"关于我们")
    
    respond_to do |format|
      if @about_us.update_attributes(admin_home_params)
        format.html { redirect_to admin_homes_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { redirect_to admin_homes_url, notice: '失败' }
        format.json { render json: @about_us.errors, status: :unprocessable_entity }
      end
    end

  end

  def new
  	@kind = set_admin_kind
  	@home = @kind=="about_us" ? (Home.where("title='关于我们'").first || Home.new("title"=>"关于我们")): Home.new
  end
  def create
  	@home = params["home"]["title"]=="关于我们" ? (Home.where("title='关于我们'").first || Home.new({"title"=>"关于我们"}.reverse_merge(admin_home_params))) : Home.new(admin_home_params)  
    respond_to do |format|
      if @home.save
        format.html { redirect_to "/admin/homes/", notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @advantage }
      else
        format.html { render action: 'new' }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
 
  end

  def update

  	respond_to do |format|
      if @home.update(admin_home_params)
        format.html { redirect_to admin_homes_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @advantage.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@home.destroy
  	redirect_to admin_homes_url,notice: "成功删除"
  end
  private
  def set_admin_home
  	@home = Home.find params[:id]
  	@kind = set_admin_kind
  end
  def set_admin_kind
    kind = case params["kind"]
  	when "vido" 
  		return "vido" 
    when "about_us"
     	return "about_us"
    else
      "image"
    end

  end
  def admin_home_params
      params.require(:home).permit(:title,:info,:content,:type,:image,:url)
  end

end
