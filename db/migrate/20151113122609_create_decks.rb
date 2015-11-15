class CreateDecks < ActiveRecord::Migration
  def change
      create_table :decks do |t|
      t.string      :name, null: false
      t.string      :category, null: false
      t.string      :image_url
      t.timestamps
    end
  end
end