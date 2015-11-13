class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :correct?, default: false
      t.integer :round_id, null: false

      t.timestamps(null: false)
    end
  end
end
