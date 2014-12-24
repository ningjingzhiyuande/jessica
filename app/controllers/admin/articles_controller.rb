class Admin::ArticlesController < Admin::BaseController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy,:recommend]
  def index
  	#kind =  Article.kinds[params[:kind]] || "0"
  	@articles = Article.all #where("kind=?",kind).order("updated_at desc")
  end

  def create
  	@article = Article.new(admin_article_params)  
    respond_to do |format|
      if @article.save
        format.html { redirect_to "/admin/articles/", notice: '创建成功' }
        format.json { render action: 'show', status: :created, location: @admin_article }
      else
        format.html { render action: 'new' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@article = Article.new
  end

  def edit
  end

  def update
     respond_to do |format|
      if @article.update(admin_article_params)
        format.html { redirect_to admin_articles_url, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  	
  end
 def recommend
 	@article.toggle!(:is_recommend)
 	respond_to do |format|
        format.html { redirect_to :back, notice: '推荐成功' }
        format.json { head :no_content }
    end
    
 end
 def destroy
    @article.destroy
    redirect_to admin_articles_url, notice: '删除成功'
 end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_article_params
       params.require(:article).permit(:title,:info,:content,:kind)
    end

end
