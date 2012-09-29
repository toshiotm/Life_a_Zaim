require 'spec_helper'

describe "cashflows/show" do
  before(:each) do
    @cashflow = assign(:cashflow, stub_model(Cashflow,
      :amount => 1,
      :category => "Category",
      :unit => 2,
      :description => "Description",
      :isIncome => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Category/)
    rendered.should match(/2/)
    rendered.should match(/Description/)
    rendered.should match(/false/)
  end
end
