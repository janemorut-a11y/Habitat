class CreateGoals < ActiveRecord::Migration[8.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :frequency
      t.integer :target_count
      t.boolean :is_active
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
