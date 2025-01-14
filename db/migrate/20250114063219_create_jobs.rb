class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :field
      t.text :seniority
      t.text :position
      t.string :key_skill
      t.string :employment_type
      t.string :education_level
      t.timestamps
    end
  end
end
