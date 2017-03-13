require 'rails_helper'

RSpec.describe "participant_flows/show", type: :view do
  before(:each) do
    @participant_flow = assign(:participant_flow, ParticipantFlow.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
