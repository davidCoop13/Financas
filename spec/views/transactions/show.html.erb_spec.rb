require 'spec_helper'

describe "transactions/show" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :number => "Number",
      :description => "Description",
      :amount => 1.5,
      :credit => false,
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    rendered.should match(/Description/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(//)
  end
end
