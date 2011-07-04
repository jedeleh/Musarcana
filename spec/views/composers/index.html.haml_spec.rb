require 'spec_helper'

describe "composers/index.html.haml" do
  before(:each) do
    assign(:composers, [
      stub_model(Composer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :nationality => "Nationality"
      ),
      stub_model(Composer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :nationality => "Nationality"
      )
    ])
  end

  it "renders a list of composers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
  end
end
