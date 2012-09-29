class DailyZaimController < ApplicationController

  def dailyZaim
  	@cashflows = Cashflow.all
  	
  	cashsum = 0

  	@cashflows.each do |cash| 
  		if cash.isIncome 
  			cashsum += cash.amount
  		else
  			cashsum -= cash.amount
  		end
  	end
  	render :text =>  cashsum
  end

end
