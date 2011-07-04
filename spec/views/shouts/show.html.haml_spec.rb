require 'spec_helper'

describe "shouts/show.html.haml" do
  before(:each) do
    @shout = assign(:shout, stub_model(Shout,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
