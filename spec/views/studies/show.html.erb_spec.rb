require 'rails_helper'

RSpec.describe "studies/show", type: :view do
  before(:each) do
    @study = assign(:study, Study.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
