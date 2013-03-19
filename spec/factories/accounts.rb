# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name "MyString"
    number "MyString"
    transactions nil
    bill nil
    invoice nil
  end
end
