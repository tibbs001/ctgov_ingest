class Milestone < ActiveRecord::Base
  belongs_to :study

  def self.create_from(sheet)
    new(:group_name=> get_group_name(sheet),
        :group_description=> get_group_description(sheet),
     )
  end

  def create_from(sheet)
    data_elements=[]
    cntr=1
    sheet.column(1).each{|row|
      data_elements << [cntr,row] if cntr > 2 and !row.nil?
      cntr=cntr+1
    }
  end

end
