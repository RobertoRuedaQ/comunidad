class Worker < ApplicationRecord
	mount_uploader :imagen, FotoUploader
end
