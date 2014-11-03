class Sweet < ActiveRecord::Base
  belongs_to :category

  ## use the PhotoUploader for our "photo" column
  mount_uploader :photo, PhotoUploader
end
