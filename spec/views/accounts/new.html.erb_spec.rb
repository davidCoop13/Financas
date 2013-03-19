require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :name => "MyString",
      :number => "MyString",
      :transactions => nil,
      :bill => nil,
      :invoice => nil
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", accounts_path, "post" do
      assert_select "input#account_name[name=?]", "account[name]"
      assert_select "input#account_number[name=?]", "account[number]"
      assert_select "input#account_transactions[name=?]", "account[transactions]"
      assert_select "input#account_bill[name=?]", "account[bill]"
      assert_select "input#account_invoice[name=?]", "account[invoice]"
    end
  end
end
