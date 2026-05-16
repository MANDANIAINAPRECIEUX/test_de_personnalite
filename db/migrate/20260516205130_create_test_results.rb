class CreateTestResults < ActiveRecord::Migration[8.1]
  def change
    create_table :test_results do |t|
      t.integer :dominant_score
      t.integer :influent_score
      t.integer :stable_score
      t.integer :conscientious_score
      t.string :primary_type
      t.string :secondary_type
      t.string :profile_code

      t.timestamps
    end
  end
end
