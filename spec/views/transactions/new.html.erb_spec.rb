require 'spec_helper'

describe "transactions/new" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :number => "MyString",
      :description => "MyString",
      :amount => 1.5,
      :credit => false,
      :account => nil
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", transactions_path, "post" do
      assert_select "input#transaction_number[name=?]", "transaction[number]"
      assert_select "input#transaction_description[name=?]", "transaction[description]"
      assert_select "input#transaction_amount[name=?]", "transaction[amount]"
      assert_select "input#transaction_credit[name=?]", "transaction[credit]"
      assert_select "input#transaction_account[name=?]", "transaction[account]"
    end
  end
end
