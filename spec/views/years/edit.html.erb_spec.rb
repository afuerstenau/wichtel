require 'rails_helper'

RSpec.describe "years/edit", type: :view do
  before(:each) do
    @year = assign(:year, Year.create!(
      :year => 1
    ))
  end

  it "renders the edit year form" do
    render

    assert_select "form[action=?][method=?]", year_path(@year), "post" do

      assert_select "input[name=?]", "year[year]"
    end
  end
end
