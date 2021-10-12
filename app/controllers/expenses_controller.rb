class ExpensesController < ApplicationController
    def index
        expenses = current_user.expenses
        render json: expenses, except: [:created_at, :updated_at]
    end

end
