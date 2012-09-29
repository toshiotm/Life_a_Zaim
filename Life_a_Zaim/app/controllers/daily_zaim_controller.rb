class DailyZaimController < ApplicationController

  def dailyZaim
  	@cashflows = Cashflow.all
  	
  	cashsum = 0

  	@cashflows.each do |cash|

  		addCash = cash.amount;
  		case cash.unit
			when 3
				addCash /= 30    
			when 4
				addCash /= 365
		end

  		if cash.isIncome 
  			cashsum += addCash
  		else
  			cashsum -= addCash
  		end
  	end
  	render :text =>  cashsum
  end

end
