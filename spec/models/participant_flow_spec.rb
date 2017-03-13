require 'rails_helper'

RSpec.describe ParticipantFlow, type: :model do
  it 'creates one participant_flow from the spreadsheet' do
    data=Roo::Spreadsheet.open('spec/support/shared_examples/template.xlsx')
  end

  it 'has related models setup correctly' do
    s=Study.new
    recruitment_detail='xxxx'
    pre_assignment_detail='yyyy'
    s.participant_flows << ParticipantFlow.new({:recruitment_detail=>recruitment_detail,:pre_assignment_detail=>pre_assignment_detail})
    s.save!
    expect(s.participant_flows.size).to eq(1)
    expect(s.participant_flows.first.recruitment_detail).to eq(recruitment_detail)
    expect(s.participant_flows.first.pre_assignment_detail).to eq(pre_assignment_detail)
  end

end
