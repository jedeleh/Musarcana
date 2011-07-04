require 'spec_helper'

describe "shouts/edit.html.haml" do
  before(:each) do
    @shout = assign(:shout, stub_model(Shout,
      :content => "MyString"
    ))
  end

  it "renders the edit shout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shouts_path(@shout), :method => "post" do
      assert_select "input#shout_content", :name => "shout[content]"
    end
  end
end
