class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense, only: %i[show edit update destroy]
  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(load_expenses)
# debugger

    if @expense.save
      redirect_to root_path, notice: 'Expense was successfully created.'

    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def show
  end

  def index
    @expenses = current_user.expenses
  end

  def destroy
    @expense.destroy
    redirect_to root_path, notice: 'Expense was successfully deleted.'
  end

  def update
  end

  def edit
  end


  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def load_expenses
    params.require(:expense).permit(:category_id, :user_id, :amount, :date)
  end
end
