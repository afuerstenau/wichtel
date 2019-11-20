require 'rails_helper'

RSpec.describe "christmasevenings/show", type: :view do
  before(:each) do
    @christmasevening = assign(:christmasevening, Christmasevening.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
