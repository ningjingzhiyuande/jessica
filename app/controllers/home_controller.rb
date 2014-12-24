class HomeController < ApplicationController
  def index
  	@hot_news = Article.where("kind=?",Article.kinds["hot_news"])
  	@news = Article.where("kind=?",Article.kinds["news"])
  	@notices = Article.where("kind=?",Article.kinds["notice"])
  	@images = Home.where("title!='关于我们'").limit(7)
  end
end
