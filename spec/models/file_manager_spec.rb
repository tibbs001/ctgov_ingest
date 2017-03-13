require 'rails_helper'

describe FileManager do

  it 'reads in template and detects expected sheets' do
    data=Roo::Spreadsheet.open('spec/support/shared_examples/template.xlsx')
    fm=FileManager.ingest(data)
    expect(fm.sheets.size).to eq(6)
  end

end
