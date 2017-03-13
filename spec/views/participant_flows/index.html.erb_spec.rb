require 'rails_helper'

RSpec.describe "participant_flows/index", type: :view do
  before(:each) do
    assign(:participant_flows, [
      ParticipantFlow.create!(),
      ParticipantFlow.create!()
    ])
  end

  it "renders a list of participant_flows" do
    render
  end
end
