class ExpensesController < ApplicationController
    before_action :authorized
    
    def index
        expenses = current_user.expenses
        render json: expenses.order_by_name, except: [:created_at, :updated_at]
    end

    def create
        expense = Expense.new(user_id: current_user.id, name:params[:name], budget:params[:budget])
        if expense.save
            render json: expense, except: [:created_at, :updated_at]
        else 
            render json: { error: "Try again."}
        end
    end

    def destroy
        expense = Expense.find(params[:id])
        expense.destroy
        render json: expense.id
    end


    def update
        expense = Expense.find(params[:id])
        if params[:amount] && expense.update(amount: params[:amount])
            render json: expense, except: [:created_at, :updated_at]
        elsif params[:name] && expense.update(name: params[:name])
            render json: expense, except: [:created_at, :updated_at] 
        else
            render json: { message: "Edit is unsuccessfull.Try again" }
        end
    end

end
  