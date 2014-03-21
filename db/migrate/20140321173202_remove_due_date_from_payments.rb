class RemoveDueDateFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :due_date, :datetime
  end
end
