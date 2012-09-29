require 'spec_helper'

describe "cashflows/index" do
  before(:each) do
    assign(:cashflows, [
      stub_model(Cashflow,
        :amount => 1,
        :category => "Category",
        :unit => 2,
        :description => "Description",
        :isIncome => false
      ),
      stub_model(Cashflow,
        :amount => 1,
        :category => "Category",
        :unit => 2,
        :description => "Description",
        :isIncome => false
      )
    ])
  end

  it "renders a list of cashflows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
