require 'rails_helper'

RSpec.describe "milestones/new", type: :view do
  before(:each) do
    assign(:milestone, Milestone.new())
  end

  it "renders new milestone form" do
    render

    assert_select "form[action=?][method=?]", milestones_path, "post" do
    end
  end
end
