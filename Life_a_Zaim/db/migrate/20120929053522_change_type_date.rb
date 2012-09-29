class ChangeTypeDate < ActiveRecord::Migration
  def change
    remove_column :cashflows, :date
    add_column :cashflows, :date, :date
  end
end
