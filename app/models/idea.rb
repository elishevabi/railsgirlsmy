class Idea < ApplicationRecord
#cannot create idea w/o name
validates :name, presence: true
#there can be many comments attached to the Idea model
has_many :comments
#This mount_uploader line tells the Idea model that the picture field is a file upload. 
#It will store information about the file upload on that field to display it later.
mount_uploader :picture, PictureUploader
end
