class Article < ActiveRecord::Base
	enum kind: [:hot_news,:news,:notice]
end
