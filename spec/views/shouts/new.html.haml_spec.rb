require 'spec_helper'

describe "shouts/new.html.haml" do
  before(:each) do
    assign(:shout, stub_model(Shout,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new shout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shouts_path, :method => "post" do
      assert_select "input#shout_content", :name => "shout[content]"
    end
  end
end
