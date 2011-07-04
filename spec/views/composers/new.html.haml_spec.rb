require 'spec_helper'

describe "composers/new.html.haml" do
  before(:each) do
    assign(:composer, stub_model(Composer,
      :first_name => "MyString",
      :last_name => "MyString",
      :nationality => "MyString"
    ).as_new_record)
  end

  it "renders new composer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => composers_path, :method => "post" do
      assert_select "input#composer_first_name", :name => "composer[first_name]"
      assert_select "input#composer_last_name", :name => "composer[last_name]"
      assert_select "input#composer_nationality", :name => "composer[nationality]"
    end
  end
end
