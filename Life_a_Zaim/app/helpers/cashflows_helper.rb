#coding: utf-8

module CashflowsHelper


	def unit_choices
		[["１回", 1],
		["毎日", 2],
		["毎月", 3],
		["毎年", 4]
		]
	end

	def unit_convert(val)
          units = { "1"=>"1回", "2"=>"毎日", "3"=>"毎月", "4"=>"毎年"}

          units[val.to_s]
	end

	def calculate_tax_inclusive_amount(cashflow)
          return cashflow.amount if cashflow.isIncome || cashflow.isTaxIncluded
          cashflow.amount + (cashflow.amount * 0.05).to_i
	end
        
end
