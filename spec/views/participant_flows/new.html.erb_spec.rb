require 'rails_helper'

RSpec.describe "participant_flows/new", type: :view do
  before(:each) do
    assign(:participant_flow, ParticipantFlow.new())
  end

  it "renders new participant_flow form" do
    render

    assert_select "form[action=?][method=?]", participant_flows_path, "post" do
    end
  end
end
