require 'rails_helper'

RSpec.describe "milestones/index", type: :view do
  before(:each) do
    assign(:milestones, [
      Milestone.create!(),
      Milestone.create!()
    ])
  end

  it "renders a list of milestones" do
    render
  end
end
