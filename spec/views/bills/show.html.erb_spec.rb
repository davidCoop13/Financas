require 'spec_helper'

describe "bills/show" do
  before(:each) do
    @bill = assign(:bill, stub_model(Bill,
      :number => "Number",
      :payment_method => "Payment Method",
      :amount => 1.5,
      :paid => false,
      :account => nil,
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/Payment Method/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
