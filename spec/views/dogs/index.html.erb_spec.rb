require 'rails_helper'

RSpec.describe "dogs/index", :type => :view do
  before(:each) do
    assign(:dogs, [
      Dog.create!(
        :user => nil,
        :name => "Name",
        :breed => "Breed"
      ),
      Dog.create!(
        :user => nil,
        :name => "Name",
        :breed => "Breed"
      )
    ])
  end

  it "renders a list of dogs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
  end
end
