require "rails_helper"

RSpec.describe ParticipantFlowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/participant_flows").to route_to("participant_flows#index")
    end

    it "routes to #new" do
      expect(:get => "/participant_flows/new").to route_to("participant_flows#new")
    end

    it "routes to #show" do
      expect(:get => "/participant_flows/1").to route_to("participant_flows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/participant_flows/1/edit").to route_to("participant_flows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/participant_flows").to route_to("participant_flows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/participant_flows/1").to route_to("participant_flows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/participant_flows/1").to route_to("participant_flows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/participant_flows/1").to route_to("participant_flows#destroy", :id => "1")
    end

  end
end
