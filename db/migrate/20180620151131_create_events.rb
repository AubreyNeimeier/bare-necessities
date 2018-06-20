class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :date
      t.integer :start_time
      t.integer :end_time
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end
end
