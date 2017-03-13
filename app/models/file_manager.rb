require 'action_view'
require 'open-uri'
include ActionView::Helpers::NumberHelper
class FileManager

  attr_reader :source_data, :sheets

  def self.ingest(data=sample_data)
    new(data)
  end

  def initialize(data)
    @source_data=data
    @sheets=get_sheets
    ParticipantFlow.create_from(sheets['participant_flow'])
    #Milestone.create_from(sheets['participant_flow'])
  end

  def get_sheets
    sheets={}
    @source_data.sheets.each {|sn|
      sheet_name=sn.downcase.tr(' ', '_')
      if !['dropdown_key','sheet2'].include?(sheet_name)
        sheets[sheet_name] = @source_data.sheet_for(sn)
      end
    }
    sheets
  end

  def self.server
    ENV['FILESERVER_ENDPOINT']
  end

  def self.ingest_template
    "#{server}/documentation/ingest_template.xlsx"
  end

  def self.sample_data
    Roo::Spreadsheet.open('spec/support/shared_examples/template.xlsx')
  end

end
