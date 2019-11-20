require 'rails_helper'

RSpec.describe "Christmasevenings", type: :request do
  describe "GET /christmasevenings" do
    it "works! (now write some real specs)" do
      get christmasevenings_path
      expect(response).to have_http_status(200)
    end
  end
end
