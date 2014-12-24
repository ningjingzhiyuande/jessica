class Service < ActiveRecord::Base
	acts_as_list scope: [:type]
	#mount_uploader :image,ImageUploader
end
