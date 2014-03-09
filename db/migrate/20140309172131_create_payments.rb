class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.datetime :due_date
      t.datetime :from
      t.datetime :to
      t.float :amount
      t.integer :user_id
      t.datetime :paid_at

      t.timestamps
    end
  end
end
