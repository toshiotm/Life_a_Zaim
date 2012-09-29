class Cashflow < ActiveRecord::Base
  attr_accessible :amount, :category, :date, :description, :isIncome, :unit
end
