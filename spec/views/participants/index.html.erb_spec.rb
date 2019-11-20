require 'rails_helper'

RSpec.describe "participants/index", type: :view do
  before(:each) do
    assign(:participants, [
      Participant.create!(
        :name => "Name"
      ),
      Participant.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of participants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
