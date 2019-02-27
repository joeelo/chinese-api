class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :user, index: true
      t.integer :points

      t.timestamps
    end
  end
end
