class Study < ActiveRecord::Base

  has_many :participant_flows
  has_many :milestones

end
