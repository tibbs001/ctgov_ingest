require 'rails_helper'

RSpec.describe "participant_flows/edit", type: :view do
  before(:each) do
    @participant_flow = assign(:participant_flow, ParticipantFlow.create!())
  end

  it "renders the edit participant_flow form" do
    render

    assert_select "form[action=?][method=?]", participant_flow_path(@participant_flow), "post" do
    end
  end
end
