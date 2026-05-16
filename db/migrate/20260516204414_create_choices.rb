class CreateChoices < ActiveRecord::Migration[8.1]
  def change
    create_table :choices do |t|
      t.string :content
      t.string :disc_type
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
