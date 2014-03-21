class PaymentsController < ApplicationController
  def new
  end

  def create
    # when payment date starts
  end

  def update_amount
    # when Due Date comes, sums up every item
  end

  def destroy
    # if deadline passed and amount equals 0
    # deadline = due_date + clearing_period

    # else if amount != 0, create new Item for the next payment, and then destroy
  end
end
