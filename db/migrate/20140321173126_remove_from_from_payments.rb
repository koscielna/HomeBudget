class RemoveFromFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :from, :datetime
  end
end
