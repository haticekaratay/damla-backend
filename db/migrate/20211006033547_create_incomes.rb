class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.string :name

      t.timestamps
    end
  end
end
