class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name, null: false
      t.text :body, null: false

      t.references :question, index: true

      t.timestamps
    end
  end
end
