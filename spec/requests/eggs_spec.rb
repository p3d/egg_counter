require 'rails_helper'

RSpec.describe "Eggs", type: :request do
  describe "GET /eggs" do
    it "works! (now write some real specs)" do
      get eggs_path
      expect(response).to have_http_status(200)
    end
  end
end
