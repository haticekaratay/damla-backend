class ChangeAmountDefaultExpenses < ActiveRecord::Migration[6.1]
  def change
      change_column_default :expenses, :amount, 0
  end
end
