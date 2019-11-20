require 'rails_helper'

RSpec.describe "christmasevenings/index", type: :view do
  before(:each) do
    assign(:christmasevenings, [
      Christmasevening.create!(),
      Christmasevening.create!()
    ])
  end

  it "renders a list of christmasevenings" do
    render
  end
end
