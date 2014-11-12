class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :hours_per_week
      t.boolean :is_internship
      t.boolean :is_entry_level
      t.text :experience
      t.text :description
      t.boolean :full_time
      t.boolean :part_time
      t.text :how_to_apply
      t.float :pay_min
      t.float :pay_max
      t.float :pay_exact
      t.text :pay_comment
      t.string :company_name

      t.timestamps
    end
  end
end
