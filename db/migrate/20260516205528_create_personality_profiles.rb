class CreatePersonalityProfiles < ActiveRecord::Migration[8.1]
  def change
    create_table :personality_profiles do |t|
      t.string :code
      t.string :name
      t.text :description
      t.text :strengths
      t.text :weaknesses
      t.text :advice
      t.text :careers

      t.timestamps
    end
  end
end
