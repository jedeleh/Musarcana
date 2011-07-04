require 'spec_helper'

describe "Shouts" do
  describe "GET /shouts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get shouts_path
      response.status.should be(200)
    end
  end
end
