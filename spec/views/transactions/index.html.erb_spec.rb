require 'spec_helper'

describe "transactions/index" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :number => "Number",
        :description => "Description",
        :amount => 1.5,
        :credit => false,
        :account => nil
      ),
      stub_model(Transaction,
        :number => "Number",
        :description => "Description",
        :amount => 1.5,
        :credit => false,
        :account => nil
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
