class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :deck, null: false
      t.references :user, null: false
      t.integer :correct, default: 0
      t.integer :total_guesses, default: 0
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
