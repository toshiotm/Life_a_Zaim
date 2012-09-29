require 'spec_helper'

describe "cashflows/edit" do
  before(:each) do
    @cashflow = assign(:cashflow, stub_model(Cashflow,
      :amount => 1,
      :category => "MyString",
      :unit => 1,
      :description => "MyString",
      :isIncome => false
    ))
  end

  it "renders the edit cashflow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cashflows_path(@cashflow), :method => "post" do
      assert_select "input#cashflow_amount", :name => "cashflow[amount]"
      assert_select "input#cashflow_category", :name => "cashflow[category]"
      assert_select "input#cashflow_unit", :name => "cashflow[unit]"
      assert_select "input#cashflow_description", :name => "cashflow[description]"
      assert_select "input#cashflow_isIncome", :name => "cashflow[isIncome]"
    end
  end
end
