require 'spec_helper'

describe "shouts/index.html.haml" do
  before(:each) do
    assign(:shouts, [
      stub_model(Shout,
        :content => "Content"
      ),
      stub_model(Shout,
        :content => "Content"
      )
    ])
  end

  it "renders a list of shouts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
