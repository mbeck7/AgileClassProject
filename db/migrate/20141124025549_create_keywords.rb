class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyword
      t.integer :job_keywords_id

      t.timestamps
    end
  end
end
