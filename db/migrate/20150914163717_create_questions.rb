class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    t.string :asker_name, null: false
    t.string :title, null: false
    t.text :body, null: false

    t.timestamps
    end
    add_index :questions, [:title], unique: true
  end
end
