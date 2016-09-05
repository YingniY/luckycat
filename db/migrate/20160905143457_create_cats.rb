class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
