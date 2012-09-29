class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.integer :amount
      t.string :category
      t.integer :unit
      t.string :description
      t.boolean :isIncome
      t.datetime :date

      t.timestamps
    end
  end
end
