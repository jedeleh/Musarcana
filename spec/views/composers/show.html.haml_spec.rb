require 'spec_helper'

describe "composers/show.html.haml" do
  before(:each) do
    @composer = assign(:composer, stub_model(Composer,
      :first_name => "First Name",
      :last_name => "Last Name",
      :nationality => "Nationality"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nationality/)
  end
end
