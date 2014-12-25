class HomeController < ApplicationController
  layout  false,only: [:articles]
  def index
  	@hot_news = Article.where("kind=?",Article.kinds["hot_news"])
  	@news = Article.where("kind=?",Article.kinds["news"])
  	@notices = Article.where("kind=?",Article.kinds["notice"])
  	@images = Home.where("title!='关于我们'").limit(7)
  end
  def articles
  	 @article = Article.find params[:id]
  	

  end

  def suggest
  	 suggest = Suggest.new
  	 suggest.name = params[:name]
  	 suggest.mobile = params[:mobile]
  	 suggest.content = params[:content]
  	 render :text=> "ok" if suggest.save
  end
end
