require 'spec_helper'

describe "albums/new.html.haml" do
  before(:each) do
    assign(:album, stub_model(Album,
      :name => "MyString",
      :label => "MyString",
      :genre_id => 1
    ).as_new_record)
  end

  it "renders new album form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => albums_path, :method => "post" do
      assert_select "input#album_name", :name => "album[name]"
      assert_select "input#album_label", :name => "album[label]"
      assert_select "input#album_genre_id", :name => "album[genre_id]"
    end
  end
end
