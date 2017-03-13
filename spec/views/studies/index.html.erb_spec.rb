require 'rails_helper'

RSpec.describe "studies/index", type: :view do
  before(:each) do
    assign(:studies, [
      Study.create!(),
      Study.create!()
    ])
  end

  it "renders a list of studies" do
    render
  end
end
