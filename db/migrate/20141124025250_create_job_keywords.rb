class CreateJobKeywords < ActiveRecord::Migration
  def change
    create_table :job_keywords do |t|
      t.integer :job_id
      t.integer :keyword_id

      t.timestamps
    end
  end
end
