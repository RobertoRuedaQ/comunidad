class Service < ApplicationRecord
	mount_uploader :photo, FotoUploader
end
