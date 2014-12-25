class Admin::SuggestsController <  Admin::BaseController
  def index
  	@suggests = Suggest.all.order("id desc")
  end
end
