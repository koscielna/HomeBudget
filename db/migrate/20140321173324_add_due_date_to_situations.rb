class AddDueDateToSituations < ActiveRecord::Migration
  def change
    add_column :situations, :due_date, :datetime
    add_column :situations, :payment_period, :integer
  end
end
