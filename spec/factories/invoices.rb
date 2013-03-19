# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice do
    number "MyString"
    payment_date "2013-03-19"
    payment_method "MyString"
    amount 1.5
    paid false
    account nil
    category nil
  end
end
