class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.float :amount
      t.integer :situation_id
      t.integer :user_id

      t.timestamps
    end
  end
end
