class ParticipantFlow < ActiveRecord::Base

  belongs_to :study

  def self.create_from(sheet)
    new(:recruitment_detail=> get_recruitment_detail(sheet),
        :pre_assignment_detail=> get_pre_assignment_detail(sheet),
     )
  end

  def self.get_recruitment_detail(sheet)
    cntr=0
    sheet.column(1).each{|label|
      value= sheet.column(2)[cntr]
      return value if is_row_for(label,'recruitment')
      cntr=cntr+1
    }
    return 'not found'
  end

  def self.get_pre_assignment_detail(sheet)
    cntr=0
    sheet.column(1).each{|label|
      value= sheet.column(2)[cntr]
      return value if is_row_for(label,'assignment')
      cntr=cntr+1
    }
    return 'not found'
  end

  def self.is_row_for(label, comparison_string)
    return false if label.blank?
    return label.downcase.include?(comparison_string) && label.downcase.include?('detail')
  end

end
