class DailyZaimController < ApplicationController

  def dailyZaim
  	@cashflows = Cashflow.all
  	
  	render :text =>  "test"
  end

end
