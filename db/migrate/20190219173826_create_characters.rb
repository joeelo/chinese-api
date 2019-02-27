class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :chinese
      t.string :meaning
      t.string :pronunciation

      t.timestamps
    end
  end
end
