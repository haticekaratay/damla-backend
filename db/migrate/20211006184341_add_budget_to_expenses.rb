class AddBudgetToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :budget, :float
  end
end
