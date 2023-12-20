require "rails_helper"

RSpec.describe Idea do
  #we want to make sure our idea has a name:
  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    expect(idea.name).to eq("My Awesome Idea Name") # this is our expectation
  end
  
  it "has a description" do
	idea = Idea.create!(name: "My Awesome Idea Name", description: "stam")
	expect(idea.description).to eq("stam")
  end
  
  it "has a just description. should fail." do
	#expect { idea = Idea.create!(description: "stam") }.to raise_error("Name can't be blank")
	#<ActiveRecord::RecordInvalid: Validation failed: Name can't be blank>
	expect { idea = Idea.create!(description: "stam") }.to raise_error()
  end
  
  it "has comments" do
    idea = Idea.create!(name: "My Awesome Idea Name")
    comment = Comment.create!(
      user_name: "My name",
      body: "My helpful comment",
      idea: idea # Link the comment to the idea
    )
    expect(comment.idea).to eq(idea)
  end
end