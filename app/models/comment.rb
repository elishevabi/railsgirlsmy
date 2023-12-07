#The comment already knows it “belongs to” an idea because of the line belongs_to :idea, 
#which references back to the Idea model. This was automatically added by the migration
class Comment < ApplicationRecord
  belongs_to :idea
end
