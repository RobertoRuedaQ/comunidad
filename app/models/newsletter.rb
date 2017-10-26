class Newsletter < ApplicationRecord
	mount_uploader :file, FotoUploader
end
