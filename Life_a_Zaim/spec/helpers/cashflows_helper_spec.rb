#coding: utf-8
require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the CashflowsHelper. For example:
#
# describe CashflowsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end



describe "calculate_tax_inclusive_amount" do
	context "キャッシュフローが収入で非課税の場合" do
		before do
			@cashflow = Cashflow.new()
			@cashflow.isIncome = true
			@cashflow.amount = 1000
		end
		
		it "金額は１０００で税込金額も１０００になる、" do
			helper.calculate_tax_inclusive_amount(@cashflow).should == 1000
		end


	end
end
