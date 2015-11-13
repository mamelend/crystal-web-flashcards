class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to  :deck, null: false
      t.string      :question, null: false
      t.string      :answer, null: false
      t.integer     :difficulty, null: false
      t.string      :image_url
      t.timestamps
    end
  end
end