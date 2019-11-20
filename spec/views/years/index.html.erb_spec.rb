require 'rails_helper'

RSpec.describe "years/index", type: :view do
  before(:each) do
    assign(:years, [
      Year.create!(
        :year => 2
      ),
      Year.create!(
        :year => 2
      )
    ])
  end

  it "renders a list of years" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
