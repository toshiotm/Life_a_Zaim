class AddColumnIsTaxIncluded < ActiveRecord::Migration
  def change
    add_column :cashflows, :isTaxIncluded, :boolean
  end
end
