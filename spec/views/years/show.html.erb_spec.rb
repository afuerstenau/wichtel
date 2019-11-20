require 'rails_helper'

RSpec.describe "years/show", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :year => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
