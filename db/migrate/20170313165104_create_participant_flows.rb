class CreateParticipantFlows < ActiveRecord::Migration
  def change
    create_table :participant_flows do |t|
      t.integer "study_id"
      t.text    "recruitment_detail"
      t.text    "pre_assignment_detail"
      t.timestamps null: false
    end
  end
end
