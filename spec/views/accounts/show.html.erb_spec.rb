require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :name => "Name",
      :number => "Number",
      :transactions => nil,
      :bill => nil,
      :invoice => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Number/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
