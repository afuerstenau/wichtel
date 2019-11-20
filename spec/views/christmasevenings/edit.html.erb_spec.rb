require 'rails_helper'

RSpec.describe "christmasevenings/edit", type: :view do
  before(:each) do
    @christmasevening = assign(:christmasevening, Christmasevening.create!())
  end

  it "renders the edit christmasevening form" do
    render

    assert_select "form[action=?][method=?]", christmasevening_path(@christmasevening), "post" do
    end
  end
end
