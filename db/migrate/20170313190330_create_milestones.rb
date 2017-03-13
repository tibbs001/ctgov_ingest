class CreateMilestones < ActiveRecord::Migration
  def change
    create_table "milestones", force: :cascade do |t|
      t.integer "study_id"
      t.integer "group_name"
      t.integer "group_description"
      t.string  "title"
      t.string  "period"
      t.text    "reason"
      t.integer "count"
    end
  end
end
