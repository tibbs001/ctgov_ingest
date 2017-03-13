require 'rails_helper'

RSpec.describe "ParticipantFlows", type: :request do
  describe "GET /participant_flows" do
    it "works! (now write some real specs)" do
      get participant_flows_path
      expect(response).to have_http_status(200)
    end
  end
end
