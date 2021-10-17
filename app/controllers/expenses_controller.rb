class ExpensesController < ApplicationController
    def index
        expenses = current_user.expenses
        render json: expenses, except: [:created_at, :updated_at]
    end

    def create
        expense = Expense.new(user_id: current_user.id, name:params[:name], budget:params[:budget])
        if expense.save
            render json: expense, except: [:created_at, :updated_at]
        else 
            render json: { error: "Add expense has failed. Try again"}
        end
    end
end
  