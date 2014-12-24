class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

   def admin_params
    params.require(:admin).permit(:name, :password, :password_confirmation, :remember_me)
  end
end
