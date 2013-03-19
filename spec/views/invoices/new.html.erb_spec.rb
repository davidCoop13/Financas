require 'spec_helper'

describe "invoices/new" do
  before(:each) do
    assign(:invoice, stub_model(Invoice,
      :number => "MyString",
      :payment_method => "MyString",
      :amount => 1.5,
      :paid => false,
      :account => nil,
      :category => nil
    ).as_new_record)
  end

  it "renders new invoice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", invoices_path, "post" do
      assert_select "input#invoice_number[name=?]", "invoice[number]"
      assert_select "input#invoice_payment_method[name=?]", "invoice[payment_method]"
      assert_select "input#invoice_amount[name=?]", "invoice[amount]"
      assert_select "input#invoice_paid[name=?]", "invoice[paid]"
      assert_select "input#invoice_account[name=?]", "invoice[account]"
      assert_select "input#invoice_category[name=?]", "invoice[category]"
    end
  end
end
