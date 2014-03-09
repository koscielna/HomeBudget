class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :name
      t.integer :user_id
      t.integer :clearing_period

      t.timestamps
    end
  end
end
