class IncomesController < ApplicationController
    # before_action :authorized

    def index
        #byebug
        incomes = current_user.incomes
        render json: incomes, except: [:created_at, :updated_at]
    end

    def create
        income = Income.new(user_id:current_user.id, name: params[:name], amount:params[:amount])
        if income.save
            render json: income, except: [:created_at, :updated_at]
        else
            render json: { error: "Try again."}#, status: :unauthorized #status: :unprocessable_entity
        end
    end

end
