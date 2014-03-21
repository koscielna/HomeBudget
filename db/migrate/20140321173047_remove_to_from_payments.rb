class RemoveToFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :to, :datetime
  end
end
