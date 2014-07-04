# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dog do
    user nil
    name "MyString"
    breed "MyString"
    bday "2014-07-04 00:55:51"
  end
end
