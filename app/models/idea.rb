class Idea < ApplicationRecord
validates :name, presence: true
#This mount_uploader line tells the Idea model that the picture field is a file upload. 
#It will store information about the file upload on that field to display it later.
mount_uploader :picture, PictureUploader
end
