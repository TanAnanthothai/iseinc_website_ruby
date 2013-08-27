class Iseincnews < ActiveRecord::Base
    attr_accessible :description, :image, :title
	mount_uploader :image, YourUploaderUploader  
end
