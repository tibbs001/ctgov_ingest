require 'rails_helper'

RSpec.describe "studies/edit", type: :view do
  before(:each) do
    @study = assign(:study, Study.create!())
  end

  it "renders the edit study form" do
    render

    assert_select "form[action=?][method=?]", study_path(@study), "post" do
    end
  end
end
