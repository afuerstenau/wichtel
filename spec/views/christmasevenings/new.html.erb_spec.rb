require 'rails_helper'

RSpec.describe "christmasevenings/new", type: :view do
  before(:each) do
    assign(:christmasevening, Christmasevening.new())
  end

  it "renders new christmasevening form" do
    render

    assert_select "form[action=?][method=?]", christmasevenings_path, "post" do
    end
  end
end
