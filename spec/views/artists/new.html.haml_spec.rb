require 'spec_helper'

describe "artists/new.html.haml" do
  before(:each) do
    assign(:artist, stub_model(Artist,
      :first_name => "MyString",
      :last_name => "MyString",
      :nationality => "MyString"
    ).as_new_record)
  end

  it "renders new artist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => artists_path, :method => "post" do
      assert_select "input#artist_first_name", :name => "artist[first_name]"
      assert_select "input#artist_last_name", :name => "artist[last_name]"
      assert_select "input#artist_nationality", :name => "artist[nationality]"
    end
  end
end
