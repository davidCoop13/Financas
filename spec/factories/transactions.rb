# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    number "MyString"
    date "2013-03-19"
    description "MyString"
    amount 1.5
    credit false
    account nil
  end
end
