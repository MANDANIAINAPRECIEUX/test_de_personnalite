class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
