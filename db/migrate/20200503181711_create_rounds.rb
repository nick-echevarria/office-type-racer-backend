class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :user_id
      t.integer :quote_id
      t.integer :score
      t.integer :completion_time

      t.timestamps
    end
  end
end
