require 'rails_helper'

RSpec.describe "milestones/show", type: :view do
  before(:each) do
    @milestone = assign(:milestone, Milestone.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
