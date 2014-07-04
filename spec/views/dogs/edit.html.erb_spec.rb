require 'rails_helper'

RSpec.describe "dogs/edit", :type => :view do
  before(:each) do
    @dog = assign(:dog, Dog.create!(
      :user => nil,
      :name => "MyString",
      :breed => "MyString"
    ))
  end

  it "renders the edit dog form" do
    render

    assert_select "form[action=?][method=?]", dog_path(@dog), "post" do

      assert_select "input#dog_user_id[name=?]", "dog[user_id]"

      assert_select "input#dog_name[name=?]", "dog[name]"

      assert_select "input#dog_breed[name=?]", "dog[breed]"
    end
  end
end
